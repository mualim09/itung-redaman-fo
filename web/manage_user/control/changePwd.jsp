<%-- 
    Document   : changePwd
    Created on : Nov 29, 2018, 4:34:29 PM
    Author     : Lenovo
--%>

<%@page import="helper.BasicJson"%>
<%@page import="org.json.JSONObject"%>
<%@page import="dbcon.MyConnector"%>
<%@page import="helper.MySession"%>
<%
    String nik = request.getParameter("nik");
    String pwd = request.getParameter("pwd");
    
    String creator = (String) session.getAttribute(MySession.NIK);
    
    MyConnector con = new MyConnector();
    con.createConnection();
    
    String query = "Update adm_user set password='"+pwd+"' where nik='"+nik+"';";
    boolean isOke = con.executeQuery(query);
    con.activitLog(creator, "adm_user", "Mengganti password user "+nik);
    con.closeConnection();
    
    JSONObject json = null;
    BasicJson basJ = new BasicJson();
    
    if(isOke){
        json = basJ.getBasicJson(true, "Password for user "+nik+" is changed.");
        out.print(json.toString());
        return;
    }
    
    
    json = basJ.getBasicJson(false, "Failed to change password for user "+nik);
    out.print(json.toString());
    
%>
