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
    String kap = request.getParameter("kap");
    String type = request.getParameter("type");
    String merk = request.getParameter("merk");
    String kon_freon = request.getParameter("kon_freon");
    String tegTo = request.getParameter("tegTo");
    String arusTo = request.getParameter("arusTo");
    String temp = request.getParameter("temp");
    String klbm = request.getParameter("klbm");
    String ket = request.getParameter("ket");
    String id = request.getParameter("id");
    String witel = "TASIKMALAYA";
    
    String nik = (String) session.getAttribute(MySession.NIK);

    String query = "UPDATE cme_air_conditioner set `type`='"+type+"', merk='"+merk+"', kap="+kap+" , kon_freon="+kon_freon+", `tegTo`="+tegTo+", `arusTo`="+arusTo+", temp="+temp+", klbm="+klbm+", ket='"+ket+"'"
            + " WHERE witel='"+witel+"' AND node='"+node+"' AND `Id`="+id+" ;";
    MyConnector con = new MyConnector();
    con.createConnection();
    
    con.executeQuery(query);
    
    out.print(new BasicJson().getBasicJson(true, "AC node "+node+" telah diedit.").toString());
    con.activitLog(nik, "cme_battery", "Mengedit data AC node "+node);
    con.closeConnection();

   
%>
