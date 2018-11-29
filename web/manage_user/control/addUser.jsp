<%-- 
    Document   : addUser
    Created on : Nov 29, 2018, 1:57:39 PM
    Author     : Lenovo
--%>

<%@page import="helper.MySession"%>
<%@page import="helper.BasicJson"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dbcon.MyConnector"%>
<%
    String nik = request.getParameter("nik");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    
    MyConnector con = new MyConnector();
    con.createConnection();
    
    String query="Select nik from adm_user where nik='"+nik+"' limit 1; ";
    
    ArrayList<ArrayList<String>> duplicate = con.getData(query);
    
    JSONObject json = null;
    BasicJson basJ = new BasicJson();
    
    if(duplicate.size()>0){
        json = basJ.getBasicJson(false, "NIK:"+nik+" is already used.");
        out.print(json.toString());
        con.closeConnection();
        return;
    }
    
    String creator = (String) session.getAttribute(MySession.NIK);
    
    query="INSERT INTO adm_user(nik, `name`, phone, email, created_date) VALUES('"+nik+"', '"+name+"', '"+phone+"', '"+email+"', now());";
    boolean isOke = con.executeQuery(query);
    query = "INSERT INTO activity_log(nik,waktu,tabel,activity) VALUES('"+creator+"', now(), 'adm_user', 'Menambahkan user "+nik+"' );";
    con.executeQuery(query);
    con.closeConnection();
    
    if(isOke){
        json = basJ.getBasicJson(true, "User is added!");
        out.print(json.toString());
        return;
    }
    
    json = basJ.getBasicJson(false, "Failed to add user!");
    out.print(json.toString());

    
%>