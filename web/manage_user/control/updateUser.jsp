<%-- 
    Document   : updateUser
    Created on : Nov 29, 2018, 3:27:51 PM
    Author     : Lenovo
--%>

<%@page import="helper.BasicJson"%>
<%@page import="org.json.JSONObject"%>
<%@page import="helper.MySession"%>
<%@page import="dbcon.MyConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nik = request.getParameter("nik");
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String level = request.getParameter("level");
    
    String creator = (String) session.getAttribute(MySession.NIK);
    
    MyConnector con = new MyConnector();
    con.createConnection();
    
    String query="UPDATE adm_user set `name`='"+name+"', phone='"+phone+"', email='"+email+"', `level`='"+level+"' WHERE nik='"+nik+"';";
    boolean isOke = con.executeQuery(query);
    con.activitLog(creator, "adm_user", "Memperbarui data user "+nik);
    con.closeConnection();
    
    JSONObject json = null;
    BasicJson basJ = new BasicJson();
    
    if(isOke){
        json = basJ.getBasicJson(true, "User "+nik+" is updated!");
        out.print(json.toString());
        return;
    }
    
    json = basJ.getBasicJson(false, "Failed to update user "+nik);
    out.print(json.toString());
%>
