<%-- 
    Document   : logout
    Created on : Nov 29, 2018, 8:03:55 AM
    Author     : Lenovo
--%>

<%@page import="dbcon.MyConnector"%>
<%@page import="helper.MySession"%>
<%
    String nik = (String) session.getAttribute(MySession.NIK);
    
    MyConnector con = new MyConnector();
    con.createConnection();
    
    String query = "INSERT INTO activity_log(nik,waktu,tabel,activity) VALUES('"+nik+"', now(), '-', 'Log keluar dari sistem.' );";
    con.executeQuery(query);
    con.closeConnection();
    
    
    session.invalidate();
    //response.sendRedirect("index.jsp");
    out.print("<script> window.history.forward(); location.replace('index.jsp')</script>");
%>
