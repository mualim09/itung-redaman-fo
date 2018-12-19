<%-- 
    Document   : loadNode
    Created on : Dec 17, 2018, 12:03:17 PM
    Author     : Lenovo
--%>

<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page import="helper.BasicJson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dbcon.MyConnector"%>
<%
    MyConnector con = new MyConnector();
    con.createConnection();
    String query = "SELECT name from node_cme WHERE witel='TASIKMALAYA'";
    ArrayList<ArrayList<String>> arr = con.getData(query);
    
    if(arr.size()<1){
        out.print(new BasicJson().getBasicJson(false, "-").toString());
        con.closeConnection();
        return;
    }
    
    JSONArray jArr = new JSONArray();
    for(ArrayList<String> ar : arr){
        jArr.put(ar.get(0));
    }
    
    JSONObject json = new BasicJson().getBasicJson(true, "-");
    json.put("arr", jArr);
    
    out.print(json.toString());
    con.closeConnection();
    
%>
