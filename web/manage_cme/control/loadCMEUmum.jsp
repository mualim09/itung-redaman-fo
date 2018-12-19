<%-- 
    Document   : addNode
    Created on : Dec 17, 2018, 12:29:05 PM
    Author     : Lenovo
--%>

<%@page import="org.json.JSONObject"%>
<%@page import="helper.BasicJson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dbcon.MyConnector"%>
<%@page import="helper.MySession"%>
<%
    String node = request.getParameter("node");
    String witel = "TASIKMALAYA";
    
    MyConnector con = new MyConnector();
    con.createConnection();
    String query = "SELECT ifnull(dei_merk, '-'), ifnull(dei_kap, '-'), ifnull(pln_kap, '-'), ifnull(pln_terpakai, '-'), ifnull(keterangan, '-') FROM cme_umum WHERE witel='"+witel+"' AND node='"+node+"';";
    ArrayList<ArrayList<String>> arr = con.getData(query);
    
    JSONObject json = new JSONObject();
    if(arr.size()>0){
        json.put("deiMerk", arr.get(0).get(0));
        json.put("deiKap", arr.get(0).get(1));
        json.put("plnKap", arr.get(0).get(2));
        json.put("plnTerpakai", arr.get(0).get(3));
        json.put("ket", arr.get(0).get(4));
        json.put("isValid", true);
    }
    else{
        json.put("isValid", false);
    }
    
    
    out.print(json.toString());
    
    con.closeConnection();
    
%>