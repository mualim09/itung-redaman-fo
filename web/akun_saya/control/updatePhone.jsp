<%-- 
    Document   : updatePhone
    Created on : Dec 9, 2018, 4:07:29 PM
    Author     : Lenovo
--%>

<%@page import="helper.BasicJson"%>
<%@page import="dbcon.MyConnector"%>
<%@page import="helper.MySession"%>
<%
    String telp = request.getParameter("telp");
    String nik = (String) session.getAttribute(MySession.NIK);
    
    MyConnector con = new MyConnector();
    con.createConnection();
    
    String query = "UPDATE adm_user SET phone='"+telp+"' WHERE nik='"+nik+"';";
    con.executeQuery(query);
    
    out.print(new BasicJson().getBasicJson(true, "Nomor telepon berhasil diperbarui.").toString());
    con.activitLog(nik, "adm_user", "Memperbarui nomer telepon menjadi "+telp);
    con.closeConnection();
    
%>
