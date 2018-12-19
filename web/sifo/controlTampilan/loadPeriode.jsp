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
    
    String witel="TASIKMALAYA";
    String lokasi = request.getParameter("lokasi");
    String core = request.getParameter("core");
    
    String query="SELECT distinct(SUBSTRING_INDEX(tanggal,' ',-2) ) FROM tb_data WHERE core ='"+core+"';";
    
    ArrayList<ArrayList<String>> arr = con.getData(query);
    
    JSONArray jArr = new JSONArray();
    for(ArrayList<String> ar : arr){
               
        jArr.put(ar.get(0));
    }
    
    out.print(jArr.toString());
    con.closeConnection();
%>
