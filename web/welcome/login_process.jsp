<%-- 
    Document   : login_process
    Created on : Nov 21, 2018, 6:20:38 PM
    Author     : Lenovo
--%>

<%@page import="helper.MySession"%>
<%@page import="helper.BasicJson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dbcon.MyConnector"%>
<%@page import="org.json.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String pwd = request.getParameter("pwd");
    String nik = request.getParameter("nik");

    String query = "SELECT password, `name` FROM adm_user WHERE nik = '" + nik + "';";

    MyConnector conn = new MyConnector();
    conn.createConnection();
    ArrayList<ArrayList<String>> arrData = conn.getData(query);
    

    BasicJson basJ = new BasicJson();
    JSONObject json = null;

    if (arrData.size() < 1) {
        json = new JSONObject();
        json.put("isValid", false);
        json.put("msg", "User does not exist!");
        out.print(json.toString());
        conn.closeConnection();
        return;
    }
    
    
    
    String thePwd = arrData.get(0).get(0);
    String theName = arrData.get(0).get(1);
    
    if(!pwd.equals(thePwd)){
        
        json = new JSONObject();
        json.put("isValid", false);
        json.put("msg", "Wrong password!");
        out.print(json.toString());
        conn.closeConnection();
        return;
    }
    
    session.setAttribute(MySession.NAME, theName);
    session.setAttribute(MySession.NIK, nik);
    
    json = basJ.getBasicJson(true, "../manage_user");
    out.print(json.toString());
    
    query = "INSERT INTO activity_log(nik,waktu,tabel,activity) VALUES('"+nik+"', now(), '-', 'Log masuk ke sistem.' );";
    conn.executeQuery(query);
    
    conn.closeConnection();
    

    
%>
