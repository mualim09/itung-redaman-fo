<%-- 
    Document   : udapteBulanLaluSolar
    Created on : Dec 10, 2018, 3:42:20 PM
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
    
    String query = "UPDATE stok_bbm_detail set sisa_bulan_lalu_solar = "+baru+" WHERE witel='"+witel+"' AND tanggal='"+yyyymmdd+"' AND node='"+node+"';";
    boolean canProceed = con.executeQuery(query);
    
    if(canProceed)
        canProceed = con.executeQuery(bbm.calcJumlahSisaSolarBulanLalu());
    if(canProceed)
        canProceed = con.executeQuery(bbm.queryCalcPersediaanSolar(node));
    if(canProceed)
        canProceed = con.executeQuery(bbm.queryCalcJumlahPersediaanSolar());
    if(canProceed)
        canProceed = con.executeQuery(bbm.calcBackupTime(node));
    
    con.activitLog(nik, "stok_bbm_detail", "Mengganti data sisa solar bulan lalu node "+node+" dari "+lama+" menjadi "+baru+" untuk laporan stok BBM bulan "+tanggal);
    con.closeConnection();
    
    out.print(new BasicJson().getBasicJson(true, "Data sisa solar bulan lalu untuk node "+node+" telah diperbarui").toString());
%>