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
    String suhu = request.getParameter("suhu");
    String bj = request.getParameter("bj");
    String casing = request.getParameter("casing");
    String kutub = request.getParameter("kutub");
    String tegCell = request.getParameter("tegCell");
    String tegBank = request.getParameter("tegBank");
    String ket = request.getParameter("ket");
    String id = request.getParameter("id");
    String witel = "TASIKMALAYA";
    
    String nik = (String) session.getAttribute(MySession.NIK);

    String query = "UPDATE cme_battery set `type`='"+type+"', kap="+kap+" , merk='"+merk+"', suhu="+suhu+", bj="+bj+", casing='"+casing+"', kutub='"+kutub+"', `tegCell`="+tegCell+", `tegBank`="+tegBank+", ket='"+ket+"' "
            + "WHERE witel='"+witel+"' AND node='"+node+"' AND `Id`="+id+" ;";
    MyConnector con = new MyConnector();
    con.createConnection();
    
    con.executeQuery(query);
    
    out.print(new BasicJson().getBasicJson(true, "Battery node "+node+" telah diedit.").toString());
    con.activitLog(nik, "cme_battery", "Mengedit data battery node "+node);
    con.closeConnection();

   
%>
