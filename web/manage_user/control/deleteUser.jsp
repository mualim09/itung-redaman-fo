<%-- 
    Document   : deleteUser
    Created on : Nov 29, 2018, 4:58:44 PM
    Author     : Lenovo
--%>

<%@page import="helper.BasicJson"%>
<%@page import="org.json.JSONObject"%>
<%@page import="helper.MySession"%>
<%@page import="dbcon.MyConnector"%>
<%
    MyConnector con = new MyConnector();
    con.createConnection();

    String nik = request.getParameter("nik");
    String creator = (String) session.getAttribute(MySession.NIK);

    String query = "Delete from adm_user where nik='" + nik + "'; ";
    boolean isOke = con.executeQuery(query);
    con.activitLog(creator, "adm_user", "Menghapus data user " + nik);
    con.closeConnection();

    JSONObject json = null;
    BasicJson basJ = new BasicJson();

    if (isOke) {
        json = basJ.getBasicJson(true, "User " + nik + " is deleted.");
        out.print(json.toString());
        return;
    }

    json = basJ.getBasicJson(false, "Failed to delete user " + nik);
    out.print(json.toString());

%>
