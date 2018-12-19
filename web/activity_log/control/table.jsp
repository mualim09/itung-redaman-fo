<%-- 
    Document   : table
    Created on : Dec 10, 2018, 7:14:17 AM
    Author     : Lenovo
--%>


<%@page import="org.json.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dbcon.MyConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    MyConnector con = new MyConnector();
    con.createConnection();
    String query = "SELECT  lg.nik, usr.`name`, lg.activity, lg.waktu "
            + "FROM activity_log lg "
            + "LEFT JOIN adm_user usr ON lg.nik = usr.nik ORDER BY lg.waktu DESC;";
    ArrayList<ArrayList<String>> arrData = con.getData(query);
    con.closeConnection();
%>
<table id="myTable" class="table table-bordered table-striped table-condensed display responsive nowrap" style="width: 100%">
    <thead>
        <tr>
            <th>NIK</th>
            <th>Nama</th>
            <th>Aktivitas</th>
            <th>Waktu</th>
        </tr>
    </thead>
    <tbody>
        <%
            for (ArrayList<String> arr : arrData) {

        %>
        <tr>
            <td><%=arr.get(0)%></td>
            <td><%=arr.get(1)%></td>
            <td><%=arr.get(2)%></td>
            <td><%=arr.get(3)%></td>
        </tr>
        <%
            }
        %>
    </tbody>
    <tfoot style="display: table-header-group">
        <tr>
            <th>NIK</th>
            <th>Nama</th>
            <th>Aktivitas</th>
            <th>Waktu</th>
        </tr>
    </tfoot>
</table>

<script>
    var exportTitle = 'Log Aktivitas User STiC';
    // Setup - add a text input to each footer cell
    $('#myTable tfoot th').each(function () {
        var title = $(this).text();
        $(this).html('<input type="text" placeholder="Cari ' + title + '" />');
    });

    var table = $("#myTable").DataTable({
        dom: 'lBfrtip',
        aaSorting: [],
        buttons: [
            'colvis',
            {
                extend: 'excel',
                title: exportTitle,
                exportOptions: {
                    columns: ':visible :not(.not-export)'
                }
            },
            {
                extend: 'csv',
                title: exportTitle,
                exportOptions: {
                    columns: ':visible :not(.not-export)'
                }
            },
            {
                extend: 'print',
                title: exportTitle,
                customize: function (win) {
                    $(win.document.body).append('<div style="text-align: right;padding-top:10px;"><br>Total Number of Users : <%=arrData.size()%> </div>');
                },
                exportOptions: {
                    columns: ':visible :not(.not-export)'
                }
            }
        ]
    });

    // Apply the search
    table.columns().every(function () {
        var that = this;

        $('input', this.footer()).on('keyup change', function () {
            if (that.search() !== this.value) {
                that
                        .search(this.value)
                        .draw();
            }
        });
    });
</script>

