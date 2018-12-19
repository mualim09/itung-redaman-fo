<%-- 
    Document   : addNode
    Created on : Dec 17, 2018, 12:29:05 PM
    Author     : Lenovo
--%>

<%@page import="helper.BasicJson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dbcon.MyConnector"%>
<%@page import="helper.MySession"%>
<%
    String nik = (String) session.getAttribute(MySession.NIK);
    String name = request.getParameter("node");
    String witel = "TASIKMALAYA";
    
    MyConnector con = new MyConnector();
    con.createConnection();
    String query = "DELETE FROM node_cme WHERE witel='"+witel+"' AND name='"+name+"' limit 1;";
   
    if(con.executeQuery(query)){
        out.print(new BasicJson().getBasicJson(true, "Node "+name+" sudah berhasil dihapus.").toString());
        con.activitLog(nik, "node_cme", "Menghapus node "+name+" untuk rekap CME");
    }
    else{
        out.print(new BasicJson().getBasicJson(false, "Node "+name+" gagal dihapus.").toString());
    }
    
    con.closeConnection();
    
%>