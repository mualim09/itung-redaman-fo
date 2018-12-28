<%-- 
    Document   : tableUser
    Created on : Nov 29, 2018, 1:59:57 PM
    Author     : Lenovo
--%>

<%@page import="org.json.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dbcon.MyConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    MyConnector con = new MyConnector();
    con.createConnection();
    String query="Select nik, `name`, phone, email, `level` from adm_user;";
    ArrayList<ArrayList<String>> arrData = con.getData(query);
    con.closeConnection();
%>
<table id="myTable" class="table table-bordered table-striped table-condensed display responsive nowrap" style="width: 100%">
    <thead>
        <tr>
            <th>NIK</th>
            <th>Name</th>
            <th>Phone</th>
            <th>Email</th>
            <th class="not-export">Action</th>
        </tr>
    </thead>
    <tbody>
        <%
            for(ArrayList<String> arr : arrData){
                JSONObject json = new JSONObject();
                json.put("nik", arr.get(0));
                json.put("name", arr.get(1));
                json.put("phone", arr.get(2));
                json.put("email", arr.get(3));
                json.put("level", arr.get(4));
        %>
        <tr>
            <td><%=arr.get(0)%></td>
            <td><%=arr.get(1)%></td>
            <td><%=arr.get(2)%></td>
            <td><%=arr.get(3)%></td>
            <td>
                <span class="hidden" id="hiddenInput"><%=json.toString()%></span>
                <button id="btnUpdateModal" class="btn btn-default"><i class="fa fa-edit"></i></button>
                <button id="btnPwdModal" class="btn btn-warning"><i class="fa fa-key"></i></button>
                <button id="btnDelete" class="btn btn-danger"><i class="fa fa-times-circle"></i></button>
            </td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>

<script>
    var exportTitle = 'Exisitng User Of STO Tasikmalaya InfoCentre';
    $("#myTable").DataTable({
        dom: 'lBfrtip',
        buttons: [
            'colvis',
            {
                extend: 'excel',
                title: exportTitle,
                exportOptions:{
                    columns: ':visible :not(.not-export)'
                }
            },
            {
                extend: 'csv',
                title: exportTitle,
                exportOptions:{
                    columns: ':visible :not(.not-export)'
                }
            },            
            {
                extend: 'print',
                title: exportTitle,
                customize: function(win){
                    $(win.document.body).append('<div style="text-align: right;padding-top:10px;"><br>Total Number of Users : <%=arrData.size()%> </div>');
                },
                exportOptions:{
                    columns: ':visible :not(.not-export)'
                }
            }            
        ]
    });
</script>
