<%-- 
    Document   : updateKet
    Created on : Dec 10, 2018, 11:37:23 AM
    Author     : Lenovo
--%>

<%@page import="helper.BasicJson"%>
<%@page import="helper.Dummy"%>
<%@page import="helper.MySession"%>
<%@page import="dbcon.MyConnector"%>
<%
    String nik = (String) session.getAttribute(MySession.NIK);
    String tanggal = request.getParameter("tanggal");
    String node = request.getParameter("node");
    String baru = request.getParameter("baru");
    
    String yyyymmdd = Dummy.getddmmyyyy(tanggal);
    MyConnector con = new MyConnector();
    con.createConnection();
    
    String query = "UPDATE stok_bbm_detail set keterangan='"+baru+"' WHERE witel='TASIKMALAYA' AND tanggal='"+yyyymmdd+"' AND node='"+node+"';";
    con.executeQuery(query);
    con.activitLog(nik, "stok_bbm_detail", "Memperbarui keterangan untuk laporan stok bbm tanggal "+ tanggal+" untuk node "+node);
    con.closeConnection();
    
    out.print(new BasicJson().getBasicJson(true, "Keterangan untuk node "+node+" berhasil diperbarui").toString());
    
%>
