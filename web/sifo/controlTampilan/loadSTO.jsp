<%-- 
    Document   : loadJSP
    Created on : Dec 17, 2018, 5:09:43 PM
    Author     : Lenovo
--%>

<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dbcon.MyConnector"%>
<%
    MyConnector con = new MyConnector();
    con.createConnection();
    String query="SELECT nama_sto, lokasi_sto FROM tb_sto;";
    
    ArrayList<ArrayList<String>> arr = con.getData(query);
    
    JSONArray jArr = new JSONArray();
    for(ArrayList<String> ar : arr){
        JSONObject jAr = new JSONObject();
        jAr.put("name", ar.get(0));
        jAr.put("lokasi", ar.get(1));
        
        jArr.put(jAr);
    }
    
    out.print(jArr.toString());
    con.closeConnection();
%>
