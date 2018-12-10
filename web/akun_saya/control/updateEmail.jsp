<%-- 
    Document   : updateEmail
    Created on : Dec 9, 2018, 4:13:54 PM
    Author     : Lenovo
--%>

<%@page import="helper.BasicJson"%>
<%@page import="dbcon.MyConnector"%>
<%@page import="helper.MySession"%>
<%
    String email = request.getParameter("email");
    String nik = (String) session.getAttribute(MySession.NIK);
    
    MyConnector con = new MyConnector();
    con.createConnection();
    
    String query = "UPDATE adm_user SET email='"+email+"' WHERE nik='"+nik+"';";
    con.executeQuery(query);
    
    out.print(new BasicJson().getBasicJson(true, "Email berhasil diperbarui.").toString());
    con.activitLog(nik, "adm_user", "Memperbarui email menjadi "+email);
    con.closeConnection();
    
%>
