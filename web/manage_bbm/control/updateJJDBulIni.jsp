<%-- 
    Document   : updateJJDBulIni
    Created on : Dec 10, 2018, 9:29:55 AM
    Author     : Lenovo
--%>

<%@page import="helper.BBM_Helper"%>
<%@page import="org.json.JSONObject"%>
<%@page import="helper.BasicJson"%>
<%@page import="helper.Dummy"%>
<%@page import="dbcon.MyConnector"%>
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
    
    String query = "UPDATE stok_bbm_detail set jam_jalan_deg_bulan_ini = "+baru+" "
            + "WHERE witel='TASIKMALAYA' AND node='"+node+"' AND tanggal = '"+yyyymmdd+"';";
    con.executeQuery(query);
    boolean canProceed = con.executeQuery(bbm.queryCalcJMLJamJalan(node));
    
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
        canProceed = con.executeQuery(bbm.calcBackupTime(node));
   
    con.activitLog(nik, "stok_bbm_master, stok_bbm_detail", "Mengganti nilai jam jalan deg bulan ini node "+node+" untuk laporan "+tanggal+" dari "+lama+" menjadi "+baru);
    
    con.closeConnection();
    JSONObject json = new BasicJson().getBasicJson(true, "Jam Jalan Deg Bulan ini untuk node "+node+" telah diperbarui");
    json.put("sql", query);
    out.print(json.toString());
    
%>
