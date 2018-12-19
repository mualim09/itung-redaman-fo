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
    String name = request.getParameter("name");
    String witel = "TASIKMALAYA";
    
    MyConnector con = new MyConnector();
    con.createConnection();
    String query = "SELECT name FROM node_cme WHERE witel='"+witel+"' AND name='"+name+"' limit 1;";
    ArrayList<ArrayList<String>> arr = con.getData(query);
    
    if(arr.size()>0){
        out.print(new BasicJson().getBasicJson(false, "Node "+name+" sudah ada. Silahkan pakai nama yang lain!").toString());
        con.closeConnection();
        return;
    }
    
    query = "INSERT INTO node_cme(witel, name) VALUES('"+witel+"', '"+name+"');";
    if(con.executeQuery(query)){
        query ="Insert into cme_umum(witel, node) Values('"+witel+"','"+name+"')";
        con.executeQuery(query);
        out.print(new BasicJson().getBasicJson(true, "Node "+name+" sudah berhasil ditambahkan.").toString());
        con.activitLog(nik, "node_cme", "Menambahkan node "+name+" untuk rekap CME");
    }
    else{
        out.print(new BasicJson().getBasicJson(false, "Node "+name+" gagal ditambahkan.").toString());
    }
    
    con.closeConnection();
    
%>