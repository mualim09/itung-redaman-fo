<%-- 
    Document   : loadCMERectifier
    Created on : Dec 18, 2018, 12:52:45 PM
    Author     : Lenovo
--%>

<%@page import="org.json.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dbcon.MyConnector"%>
<%
    String node = request.getParameter("node");
    String witel = "TASIKMALAYA";

    String query = "SELECT `Id`, `type`, bank, kap FROM cme_battery WHERE witel='" + witel + "' AND node='" + node + "'; ";
    MyConnector con = new MyConnector();
    con.createConnection();

    ArrayList<ArrayList<String>> arr = con.getData(query);
    
    if(arr.size()<1){
        out.print("<tr class='text-center'><td colspan='4'>Belum ada battery</td></tr>");
        return;
    }

    for (ArrayList<String> ar : arr) {
        JSONObject json = new JSONObject();
        json.put("id", ar.get(0));
        json.put("type", ar.get(1));
        json.put("bank", ar.get(2));
        json.put("kap", ar.get(3));

%>
<tr>
    <td><%=ar.get(1)%></td>
    <td><%=ar.get(2)%></td>
    <td><%=ar.get(3)%></td>
    <td>
        <p class="hidden" id="hidden"><%=json.toString()%></p>   
        <button id="btnEditModal" title="Edit data" class="btn btn-default"><i class="fa fa-edit"></i></button> 
        <button id="btnDelete" title="Hapus data" class="btn btn-danger"><i class="fa fa-trash"></i></button> 
    </td>
</tr>
<%    }

%>
