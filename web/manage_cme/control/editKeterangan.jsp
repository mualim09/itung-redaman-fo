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
    String ket = request.getParameter("ket");
    String witel = "TASIKMALAYA";
    
    String nik = (String) session.getAttribute(MySession.NIK);

    String query = "UPDATE cme_umum set keterangan='"+ket+"' WHERE witel='" + witel + "' AND node='" + node + "'; ";
    MyConnector con = new MyConnector();
    con.createConnection();
    
    con.executeQuery(query);
    
    out.print(new BasicJson().getBasicJson(true, "Data keterangan CME node "+node+" telah diperbarui.").toString());
    con.activitLog(nik, "cme_umum", "Merperbarui data keterangan CME node "+node);
    con.closeConnection();

   
%>
