<%-- 
    Document   : updateKapDeg
    Created on : Dec 10, 2018, 2:40:45 PM
    Author     : Lenovo
--%>

<%@page import="helper.BasicJson"%>
<%@page import="helper.MySession"%>
<%@page import="helper.Dummy"%>
<%@page import="dbcon.MyConnector"%>
<%@page import="helper.BBM_Helper"%>
<%
    String nik = (String) session.getAttribute(MySession.NIK);
    String tanggal = request.getParameter("tanggal");
    String node = request.getParameter("node");
    String lama = request.getParameter("lama");
    String baru = request.getParameter("baru");
    
    String witel = "TASIKMALAYA";
    
    String yyyymmdd = Dummy.getddmmyyyy(tanggal);
    MyConnector con = new MyConnector();
    con.createConnection();
    
    BBM_Helper bbm = new BBM_Helper(witel, yyyymmdd);
    
    String query = "UPDATE stok_bbm_detail set kapasitas_deg = "+baru+" WHERE witel='"+witel+"' AND tanggal='"+yyyymmdd+"' AND node='"+node+"';";
    boolean canProceed = con.executeQuery(query);
    
    if(canProceed)
        canProceed = con.executeQuery(bbm.queryCalcPemakaianSolar(node));
    if(canProceed)
        canProceed = con.executeQuery(bbm.queryCalcJumlahPemakaianSolar());
    if(canProceed)
        canProceed = con.executeQuery(bbm.queryCalcPersediaanSolar(node));
    if(canProceed)
        canProceed = con.executeQuery(bbm.queryCalcJumlahPersediaanSolar());
    if(canProceed)
        con.executeQuery(bbm.calcBackupTime(node));
    
    con.activitLog(nik, "stok_bbm_detail", "Mengganti nilai kapasitas deg (KVA) node "+node+" dari "+lama+" menajdi "+baru+" untuk laporan bulan "+tanggal);
    con.closeConnection();
    
    out.print(new BasicJson().getBasicJson(true, "Berhasil memperbarui data kapasitas deg(KVA) node "+node).toString());
        
%>