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
        out.print("Failed to connect");
        return;
    }
    
    //String query="insert INTO adm_user(nik, name, password, created_date) values ('940146', 'Firman Aden', 'Monyet23', now());";
    String query="Select * from adm_user;";
    /*if(!myCon.executeQuery(query)){
        out.print("Query fail!");
        return;
    }
    */
    
    ArrayList<ArrayList<String>> arrData = myCon.getData(query);
    
    for(ArrayList<String> row : arrData){
        String line = "";
        for(String col : row){
            line+=col+"  ";
        }
        
        out.print(line + "<br>");
    }
    
    myCon.closeConnection();

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
