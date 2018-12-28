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
    
    //                      0       1      2    3    4    5     6      7       8          9         10     
    String query = "SELECT `Id`, `type`, merk, kap, suhu, bj, casing, kutub, `tegCell`, `tegBank`, ket FROM cme_battery WHERE witel='" + witel + "' AND node='" + node + "'; ";
    MyConnector con = new MyConnector();
    con.createConnection();

    ArrayList<ArrayList<String>> arr = con.getData(query);
    
    if(arr.size()<1){
        out.print("<tr class='text-center'><td colspan='4'>Belum ada battery</td></tr>");
        return;
    }
    int bil = 1;
    for (ArrayList<String> ar : arr) {
        JSONObject json = new JSONObject();
        json.put("id", ar.get(0));
        json.put("type", ar.get(1));
        json.put("merk", ar.get(2));
        json.put("kap", ar.get(3));
        json.put("suhu", ar.get(4));
        json.put("bj", ar.get(5));
        json.put("casing", ar.get(6));
        json.put("kutub", ar.get(7));
        json.put("tegCell", ar.get(8));
        json.put("tegBank", ar.get(9));
        json.put("ket", ar.get(10));

%>
<tr>
    <td><%=bil%></td>
    <td><%=ar.get(2)%></td>
    <td><%=ar.get(1)%></td>
    <td><%=ar.get(3)%></td>
    <td><%=ar.get(4)%></td>
    <td><%=ar.get(5)%></td>
    <td><%=ar.get(6)%></td>
    <td><%=ar.get(7)%></td>
    <td><%=ar.get(8)%></td>
    <td><%=ar.get(9)%></td>
    <td><%=ar.get(10)%></td>
    <td>
        <p class="hidden" id="hidden"><%=json.toString()%></p>   
        <button id="btnEditModal" title="Edit data" class="btn btn-default"><i class="fa fa-edit"></i></button> 
        <button id="btnDelete" title="Hapus data" class="btn btn-danger"><i class="fa fa-trash"></i></button> 
    </td>
</tr>
<%   
        bil++;
    }
%>
