<%-- 
    Document   : loadData
    Created on : Dec 17, 2018, 6:06:41 PM
    Author     : Lenovo
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dbcon.MyConnector"%>
<%
    MyConnector con = new MyConnector();
    con.createConnection();

    String witel = "TASIKMALAYA";
    String lokasi = request.getParameter("lokasi");
    String core = request.getParameter("core");
    String periode = request.getParameter("periode");

    String query = "SELECT pjg_kabel, tipe_kabel, jenis_kabel FROM tb_lokasi WHERE lokasi_sto='" + lokasi + "' AND core='" + core + "' AND tanggal LIKE '%" + periode + "';";
    String panjang = "-";
    String tipe = "-";
    String jenis = "-";

    ArrayList<ArrayList<String>> arrKabel = con.getData(query);

    if (arrKabel.size() > 0) {
        panjang = arrKabel.get(0).get(0);
        tipe = arrKabel.get(0).get(1);
        jenis = arrKabel.get(0).get(2);
    }

    query = "SELECT core_awal, `user`, hasil_ukur, redaman, total_los, keterangan FROM tb_data WHERE core='" + core + "' AND tanggal LIKE '%" + periode + "';";
    arrKabel = con.getData(query);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="col-md-12">
    <div class="table-responsive">
        <table id="myTable" class="table table-striped table-condensed table-bordered">
            <thead>
                <tr>
                    <th colspan="6">
                        <div class="col-md-4"><p>Panjang Kabel (Jarak): <b><%=panjang%></b></p></div>                        
                        <div class="col-md-4"><p>Tipe Kabel: <b><%=tipe%></b></p></div>                        
                        <div class="col-md-4"><p>Jenis Kabel : <b><%=jenis%></b></p></div>
                    </th>
                </tr>
                <tr>
                    <th>Core Awal</th>
                    <th>User/Status</th>
                    <th>Hasil Ukur</th>
                    <th>Att (db/km)</th>
                    <th>Total Los</th>
                    <th>Keterangan</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (ArrayList<String> arr : arrKabel) {
                %>
                <tr>
                    <td><%=arr.get(0)%></td>
                    <td><%=arr.get(1)%></td>
                    <td><%=arr.get(2)%></td>
                    <td><%=arr.get(3)%></td>
                    <td><%=arr.get(4)%></td>
                    <td><%=arr.get(5)%></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>

    </div>
</div>
<script>
    var exportTitle = 'Data Pengukuran FO Core <%=core%> Bulan <%=periode%>';
    $("#myTable").DataTable({
        dom: 'lBfrtip',
        paging: false,
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
                exportOptions: {
                    columns: ':visible :not(.not-export)'
                }
            }
        ]
    });
</script>