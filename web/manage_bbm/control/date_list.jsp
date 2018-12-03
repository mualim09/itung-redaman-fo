<%-- 
    Document   : date_list
    Created on : Dec 3, 2018, 3:11:41 PM
    Author     : Lenovo
--%>

<%@page import="org.json.JSONArray"%>
<%@page import="helper.BasicJson"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dbcon.MyConnector"%>
<%
    MyConnector con = new MyConnector();
    con.createConnection();
    con.executeQuery("set lc_time_names = 'id_ID';");
    String query = "Select date_format(tanggal, '%M %Y'), date_format(tanggal, '%m %Y')  from stok_bbm_master where witel='TASIKMALAYA' order by tanggal desc;";
    ArrayList<ArrayList<String>> arrData = con.getData(query);
    con.closeConnection();
    
    JSONObject json = null;
    BasicJson basj = new BasicJson();
    
    if(arrData.size()<1){
        json = basj.getBasicJson(false, "No exisitng report!");
        out.print(json.toString());
        return;
    }
    
    JSONArray jArr = new JSONArray();
    for(ArrayList<String> arr : arrData){
        JSONObject temp = new JSONObject();
        temp.put("value", arr.get(1));
        temp.put("name", arr.get(0));
        jArr.put(temp);
    }
    
    json = basj.getBasicJson(true, "yes");
    json.put("tanggal", jArr);
    out.print(json.toString());
%>
