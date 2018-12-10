<%-- 
    Document   : deleteReport
    Created on : Dec 5, 2018, 5:14:55 PM
    Author     : Lenovo
--%>

<%@page import="helper.BasicJson"%>
<%@page import="helper.MySession"%>
<%@page import="dbcon.MyConnector"%>
<%
    String tanggal = request.getParameter("tanggal");
    MyConnector con = new MyConnector();
    con.createConnection();
    String query = "DELETE FROM stok_bbm_detail WHERE witel='TASIKMALAYA' AND date_format(tanggal, '%m %Y')='"+tanggal+"';";
    con.executeQuery(query);
    
    query="DELETE FROM stok_bbm_master WHERE witel='TASIKMALAYA' AND date_format(tanggal, '%m %Y') = '"+tanggal+"';";
    con.executeQuery(query);
    
    String nik = (String) session.getAttribute(MySession.NIK);
    con.activitLog(nik, "stok_bbm_master, Stok_bbm_detail", "Menghapus laporan bulan "+tanggal);
    con.closeConnection();
    BasicJson basj = new BasicJson();
    
    out.print(basj.getBasicJson(true, "Laporan bulan "+tanggal+" telah dihapus").toString());
%>
