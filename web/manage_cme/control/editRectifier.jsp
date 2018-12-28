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
    String ter = request.getParameter("ter");
    String kap = request.getParameter("kap");
    String type = request.getParameter("type");
    String id = request.getParameter("id");
    String merk = request.getParameter("merk");
    String ket = request.getParameter("ket");
    String tegTo = request.getParameter("tegTo");
    String arusTo = request.getParameter("arusTo");
    String witel = "TASIKMALAYA";
    
    String nik = (String) session.getAttribute(MySession.NIK);

    String query = "UPDATE cme_rectifier set `type`='"+type+"', kap="+kap+" , terpakai="+ter+", `merk`='"+merk+"', `arusTo`="+arusTo+", `tegTo`="+tegTo+", ket='"+ket+"'"
            + "WHERE witel='"+witel+"' AND node='"+node+"' AND `Id`="+id+" ;";
    MyConnector con = new MyConnector();
    con.createConnection();
    
    con.executeQuery(query);
    
    out.print(new BasicJson().getBasicJson(true, "Rectifier node "+node+" telah diedit.").toString());
    con.activitLog(nik, "cme_rectifier", "Mengedit data rectifier node "+node);
    con.closeConnection();

   
%>
