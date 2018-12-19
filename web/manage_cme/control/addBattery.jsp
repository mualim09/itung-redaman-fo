<%-- 
    Document   : loadCMERectifier
    Created on : Dec 18, 2018, 12:52:45 PM
    Author     : Lenovo
--%>

<%@page import="helper.MySession"%>
<%@page import="helper.BasicJson"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dbcon.MyConnector"%>
<%
    String node = request.getParameter("node");
    String bank = request.getParameter("bank");
    String kap = request.getParameter("kap");
    String type = request.getParameter("type");
    String witel = "TASIKMALAYA";
    
    String nik = (String) session.getAttribute(MySession.NIK);

    String query = "INSERT INTO cme_battery(witel, node, `type`, kap, bank) VALUES('"+witel+"', '"+node+"', '"+type+"', "+kap+" , "+bank+" )";
    MyConnector con = new MyConnector();
    con.createConnection();
    
    con.executeQuery(query);
    
    out.print(new BasicJson().getBasicJson(true, "Battery node "+node+" telah ditambah.").toString());
    con.activitLog(nik, "cme_battery", "Menambah data battery node "+node);
    con.closeConnection();

   
%>
