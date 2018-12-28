<%-- 
    Document   : loadGround
    Created on : Dec 28, 2018, 11:33:52 PM
    Author     : Lenovo
--%>

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

        //                   0      1         2      3      
    String query = "SELECT `Id`, grounding, tahanan, beda  FROM cme_grounding WHERE witel='" + witel + "' AND node='" + node + "'; ";
    MyConnector con = new MyConnector();
    con.createConnection();

    ArrayList<ArrayList<String>> arr = con.getData(query);
    
    if(arr.size()<1){
        out.print("<tr class='text-center'><td colspan='4'>Belum ada Grounding</td></tr>");
        return;
    }
    int bil = 1;
    for (ArrayList<String> ar : arr) {
        JSONObject json = new JSONObject();
        json.put("id", ar.get(0));
        json.put("grounding", ar.get(1));
        json.put("tahanan", ar.get(2));
        json.put("beda", ar.get(3));
        

%>
<tr>
    <td><%=bil%></td>
    <td><%=ar.get(1)%></td>
    <td><%=ar.get(2)%></td>
    <td><%=ar.get(3)%></td>
    <td>
        <p class="hidden" id="hidden"><%=json.toString()%></p>   
        <button id="btnEditModal" title="Edit data" class="btn btn-sm btn-default"><i class="fa fa-edit"></i></button> 
        <button id="btnDelete" title="Hapus data" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></button> 
    </td>
</tr>
<%    
        bil++;
    }
%>

