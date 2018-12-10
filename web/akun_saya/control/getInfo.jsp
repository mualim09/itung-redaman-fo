<%-- 
    Document   : getInfo
    Created on : Dec 9, 2018, 3:22:55 PM
    Author     : Lenovo
--%>

<%@page import="helper.BasicJson"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dbcon.MyConnector"%>
<%@page import="helper.MySession"%>
<%
    String nik = (String) session.getAttribute(MySession.NIK);
    String query = "SELECT `name`, phone, email FROM adm_user WHERE nik='"+nik+"';";
    
    MyConnector con = new MyConnector();
    con.createConnection();
    ArrayList<ArrayList<String>> arrData = con.getData(query);
    
    JSONObject json = new JSONObject();
    BasicJson basj = new BasicJson();
    
    if(arrData.size()<1){
        json = basj.getBasicJson(false, "Data anda tidak wujud!");
        out.print(json.toString());
        con.closeConnection();
        return;
    }
    
    json = basj.getBasicJson(true, "Berhasil");
    json.put("name", arrData.get(0).get(0));
    json.put("nik", nik);
    json.put("telp", arrData.get(0).get(1));
    json.put("email", arrData.get(0).get(2));
    
    out.print(json.toString());
    con.closeConnection();
%>
