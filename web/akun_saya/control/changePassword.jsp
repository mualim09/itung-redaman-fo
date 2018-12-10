<%-- 
    Document   : changePassword
    Created on : Dec 9, 2018, 6:21:51 PM
    Author     : Lenovo
--%>

<%@page import="helper.BasicJson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dbcon.MyConnector"%>
<%@page import="helper.MySession"%>
<%
    String nik = (String) session.getAttribute(MySession.NIK);
    
    String pwd1 = request.getParameter("pwd1");
    String pwd2 = request.getParameter("pwd2");
    
    MyConnector con = new MyConnector();
    con.createConnection();
    
    String query = "SELECT password FROM adm_user WHERE nik='"+nik+"';";
    
    ArrayList<ArrayList<String>> arrData = con.getData(query);
    
    
    
    if(!pwd1.equals(arrData.get(0).get(0))){
        out.print(new BasicJson().getBasicJson(false, "Kata sandi lama anda tidak sama!"));
        con.closeConnection();
        return;
    }
    
    query ="UPDATE adm_user SET password='"+pwd2+"' WHERE nik='"+nik+"';";
    con.executeQuery(query);
    con.activitLog(nik, "adm_user", "Mengganti kata sandi");
    
    out.print(new BasicJson().getBasicJson(true, "Kata sandi anda berhasil diganti."));
    con.closeConnection();
    
%>
