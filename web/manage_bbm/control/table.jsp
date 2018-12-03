<%-- 
    Document   : table
    Created on : Nov 30, 2018, 5:06:03 PM
    Author     : Lenovo
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dbcon.MyConnector"%>
<%
    String tanggalPilihan = request.getParameter("tanggal");
    String sqlWhere = "AND date_format(bm.tanggal, '%m %Y')='" + tanggalPilihan + "';";
    if (tanggalPilihan.equals("-")) {
        sqlWhere = "AND bm.tanggal = (SELECT max(tanggal) from stok_bbm_master WHERE witel='TASIKMALAYA' limit 1)";
    }

    //                                   0                                  1                       2                           3                           4
    String query = "SELECT bm.jumlah_sisa_bulan_lalu_solar, bm.jumlah_sisa_bulan_lalu_oli, bm.jumlah_jam_jalan_deg, bm.jumlah_pemakaian_solar, bm.jumlah_pemakaian_oli, "
            //      5                                   6                           7                           8                       9                       10
            + "bm.jumlah_penambahan_solar, bm.jumlah_penambahan_oli, bm.jumlah_persediaan_solar, bm.jumlah_persediaan_oli, bm.tangki_backup_bulan_lalu, bm.tangki_backup, "
            //      11                      12
            + "bm.pembelian_solar, bm.pembelian_oli "
            + "FROM stok_bbm_master bm WHERE bm.witel='TASIKMALAYA' " + sqlWhere;
    
    
//    out.print("<br>"+query);
    MyConnector con = new MyConnector();
    con.createConnection();
    ArrayList<ArrayList<String>> arrDataM = con.getData(query);

    if (arrDataM.size() < 1) {
        out.print("<h3 class='text-center text-danger'>No report yet!</h3>");
        con.closeConnection();
        return;

    }

    //                 0            1               2                   3                               4                       5                               6                   7
    query = "SELECT bd.node, bd.kapasitas_deg, bd.kapasitas_bbm, bd.sisa_bulan_lalu_solar, bd.sisa_bulan_lalu_oli, bd.jam_jalan_deg_bulan_lalu, bd.jam_jalan_deg_bulan_ini, bd.jml_jam_jalan, "
            //          8               9                   10                  11                  12                  13                  14              15
            + "bd.pemakaian_solar, bd.pemakaian_oli, bd.penambahan_solar, bd.penambahan_oli, bd.persediaan_solar, bd.persediaan_oli, bd.backup_time, bd.keterangan "
            + "FROM stok_bbm_master bm "
            + "JOIN stok_bbm_detail bd on bm.witel=bd.witel AND bm.tanggal=bd.tanggal "
            + "WHERE bm.witel='TASIKMALAYA' " + sqlWhere;
//    out.print("<br>"+query);
    ArrayList<ArrayList<String>> arrDataD = con.getData(query);
    con.closeConnection();

%>

<table id="myTable" class="table table-bordered table-condensed display nowrap" style="width: 100%">
    <thead>
        <tr class="success">
            <th rowspan="2">No</th>
            <th rowspan="2">NODE</th>
            <th colspan="2" class="text-center">KAPASITAS</th>
            <th colspan="2">SISA BULAN LALU</th>
            <th colspan="3">JAM JALAN DEG</th>
            <th colspan="2" class="text-center">PEMAKAIAN</th>
            <th colspan="2">PENAMBAHAN</th>
            <th colspan="2">PERSEDIAAN</th>
            <th rowspan="2">BACKUP TIME(JAM)</th>
            <th rowspan="2">KETERANGAN</th>
        </tr>
        <tr>
            <th>DEG(KVA)</th>
            <th>TANGKI BBM(Liter)</th>
            <th>SOLAR</th>
            <th>OLI</th>
            <th>BULAN LALU</th>
            <th>BULAN INI</th>
            <th>JML JAM JALAN</th>
            <th>SOLAR</th>
            <th>OLI</th>
            <th>SOLAR</th>
            <th>OLI</th>
            <th>SOLAR</th>
            <th>OLI</th>
        </tr>
    </thead>
    <tbody>
        <%            int noList = 0;
            for (ArrayList<String> arr : arrDataD) {
                noList++;
        %>
        <tr>
            <td><%=noList%></td>
            <td><%=arr.get(0)%></td>
            <td><%=arr.get(1)%></td>
            <td><%=arr.get(2)%></td>
            <td><%=arr.get(3)%></td>
            <td><%=arr.get(4)%></td>
            <td><%=arr.get(5)%></td>
            <td><%=arr.get(6)%></td>
            <td><%=arr.get(7)%></td>
            <td><%=arr.get(8)%></td>
            <td><%=arr.get(9)%></td>
            <td><%=arr.get(10)%></td>
            <td><%=arr.get(11)%></td>
            <td><%=arr.get(12)%></td>
            <td><%=arr.get(13)%></td>
            <td><%=arr.get(14)%></td>
            <td><%=arr.get(15)%></td>
        </tr>
        <%
            }//end arrDataD loop
        %>
    </tbody>
</table>
<%
    ArrayList<String> arrM = arrDataM.get(0); 
%>
<div style="font-family: sans-serif; font-size: medium" class="text-left">
    <div class="row">
        <div class="col-md-6">
            <p>Jumlah jam jalan DEG: <b><%=arrM.get(2)%></b></p>
            <p>Jumlah sisa SOLAR bulan lalu(Liter): <b><%=arrM.get(0)%></b></p>
            <p>Jumlah pemakaian SOLAR(Liter): <b><%=arrM.get(3)%></b></p>
            <p>Jumlah penambahan SOLAR(Liter): <b><%=arrM.get(5)%></b></p>
            <p>Jumlah persediaan SOLAR(Liter): <b><%=arrM.get(7)%></b></p>
            <p>Pembelian SOLAR(Liter): <b><%=arrM.get(11)%></b></p>
            <p>Tangki backup bulan lalu(Liter): <b><%=arrM.get(9)%></b></p>
        </div>
        <div class="col-md-6">
            <p>&nbsp;</p>
            <p>Jumlah sisa OLI bulan lalu(Liter): <b><%=arrM.get(1)%></b></p>
            <p>Jumlah pemakaian OLI(Liter): <b><%=arrM.get(4)%></b></p>
            <p>Jumlah penambahan OLI(Liter): <b><%=arrM.get(6)%></b></p>
            <p>Jumlah persediaan OLI(Liter): <b><%=arrM.get(8)%></b></p>
            <p>Pembelian OLI(Liter): <b><%=arrM.get(12)%></b></p>
            <p>Tangki backup bulan ini(Liter): <b><%=arrM.get(10)%></b></p>
        </div>
    </div>
</div>

<script>
    var exportTitle = 'Laporan Stok BBM';
    $("#myTable").DataTable({
        lengthMenu: [[10, 25, 50, -1], [10, 25, 50, "All"]],
        dom: 'lBfrtip',
        buttons: [
            'colvis',
            {
                extend: 'excel',
                title: exportTitle,
                exportOptions: {
                    columns: ':visible :not(.not-export)',
                    rows: ':visible'
                }
            },
            {
                extend: 'csv',
                title: exportTitle,
                exportOptions: {
                    columns: ':visible :not(.not-export)',
                    rows: ':visible'
                }
            },
            {
                extend: 'print',
                title: exportTitle,
                exportOptions: {
                    columns: ':visible :not(.not-export)',
                    rows: ':visible'
                }
            }
        ]
    });
</script>