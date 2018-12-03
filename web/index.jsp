<%-- 
    Document   : index
    Created on : Nov 20, 2018, 10:01:57 PM
    Author     : Lenovo
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dbcon.MyConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    MyConnector myCon = new MyConnector();
    if (!myCon.createConnection()) {
        out.print("<h1 class='text-danger'>Failed to connect! Try again later...</h1>");
        return;
    }
    
    myCon.closeConnection();
    response.sendRedirect("welcome");

%>
