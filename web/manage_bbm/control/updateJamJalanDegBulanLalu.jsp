<%-- 
    Document   : updateJamJalanDegBulanLalu
    Created on : Dec 10, 2018, 5:10:09 PM
    Author     : Lenovo
--%>

<%@page import="helper.BasicJson"%>
<%@page import="helper.BBM_Helper"%>
<%@page import="dbcon.MyConnector"%>
<%@page import="helper.Dummy"%>
<%@page import="helper.MySession"%>
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
    
    String query = "UPDATE stok_bbm_detail set jam_jalan_deg_bulan_lalu = "+baru+" WHERE witel='"+witel+"' AND tanggal='"+yyyymmdd+"' AND node='"+node+"';";
    boolean canProceed = con.executeQuery(query);
    if(canProceed)
        canProceed = con.executeQuery(bbm.queryCalcJMLJamJalan(node));
    if(canProceed)
        canProceed = con.executeQuery(bbm.queryCalcJumlahJamJalanDeg());
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
    
    con.activitLog(nik, "stok_bbm_detail", "Mengganti data jam jalan deg bulan lalu node "+node+" dari "+lama+" menjadi "+baru+" untuk laporan stok BBM bulan "+tanggal);
    con.closeConnection();
    
    out.print(new BasicJson().getBasicJson(true, "Data jam jalan deg bulan lalu untuk node "+node+" telah diperbarui").toString());
    
%>
