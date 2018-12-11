<%-- 
    Document   : updateJumlahJalanDeg
    Created on : Dec 11, 2018, 9:07:08 AM
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
    String lama = request.getParameter("lama");
    String baru = request.getParameter("baru");

    String witel = "TASIKMALAYA";

    String yyyymmdd = Dummy.getddmmyyyy(tanggal);
    MyConnector con = new MyConnector();
    con.createConnection();

    BBM_Helper bbm = new BBM_Helper(witel, yyyymmdd);

    String query = "UPDATE stok_bbm_master set tangki_backup = " + baru + " "
            + "WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "';";
    boolean canProceed = con.executeQuery(query);
     

    con.activitLog(nik, "stok_bbm_detail", "Mengganti data tangki backup bulan ini dari " + lama + " menjadi " + baru + " untuk laporan stok BBM bulan " + tanggal);
    con.closeConnection();

    out.print(new BasicJson().getBasicJson(true, "Data tangki backup bulan ini telah diperbarui").toString());

%>

