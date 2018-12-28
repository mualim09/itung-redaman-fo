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
    String witel = "TASIKMALAYA";
    
    String nik = (String) session.getAttribute(MySession.NIK);

    String query = "INSERT INTO cme_air_conditioner(witel, node, merk, `type`, kap, kon_freon, `tegTo`, `arusTo`, temp, klbm, ket) "
            + "VALUES('"+witel+"', '"+node+"','"+merk+"', '"+type+"', "+kap+" , "+kon_freon+", "+tegTo+", "+arusTo+", "+temp+", "+klbm+", '"+ket+"' )";
    MyConnector con = new MyConnector();
    con.createConnection();
    
    con.executeQuery(query);
    
    out.print(new BasicJson().getBasicJson(true, "AC node "+node+" telah ditambah.").toString());
    con.activitLog(nik, "cme_air_conditioner", "Menambah data AC node "+node);
    con.closeConnection();

   
%>
