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
    String ground = request.getParameter("ground");
    String tahan = request.getParameter("tahan");
    String beda = request.getParameter("beda");
    String witel = "TASIKMALAYA";
    
    String nik = (String) session.getAttribute(MySession.NIK);

    String query = "INSERT INTO cme_grounding(witel, node, grounding, tahanan, beda) VALUES('"+witel+"', '"+node+"', '"+ground+"',  "+tahan+", "+beda+");";
           
    MyConnector con = new MyConnector();
    con.createConnection();
    
    con.executeQuery(query);
    
    out.print(new BasicJson().getBasicJson(true, "Grounding node "+node+" telah ditambah.").toString());
    con.activitLog(nik, "cme_grounding", "Menambah data grounding node "+node);
    con.closeConnection();

   
%>
