<%-- 
    Document   : login_process
    Created on : Nov 21, 2018, 6:20:38 PM
    Author     : Lenovo
--%>

<%@page import="org.json.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    JSONObject json = new JSONObject();
    json.put("isValid", false);
    json.put("msg", "Test");
    
    out.print(json.toString());
%>
