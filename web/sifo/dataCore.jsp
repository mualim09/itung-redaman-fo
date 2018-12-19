<%@page import="dbcon.MyConnector"%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="database.*"%>
<%@page import="Model.*"%>
<%@page import="Controller.*"%>

<style type="text/css">
    .tg  {border-collapse:collapse;border-spacing:0;}
    .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
    .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
    .tg .tg-0lax{text-align:left;vertical-align:top}
    .tg .tg-0lay{text-align:center;vertical-align:middle}
    .tg .tg-0laz{text-align:left;vertical-align:middle}
</style>

<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <jsp:include page="../share/header.jsp"/>

    </head>

    <%
        String core = request.getParameter("core");
        String lokasi = request.getParameter("lokasi_sto");
        try {
            Connection connection = null;
            Statement statement = null;
            ResultSet rs = null;
            MyConnector connector = new MyConnector();
            connector.createConnection();
            connection = connector.getConnection();
            statement = connection.createStatement();
            String Data = "select * from tb_lokasi where core = '" + core + "' order by tanggal desc";

            rs = statement.executeQuery(Data);
    %>

    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <jsp:include page="../share/navigation-right.jsp" />


            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Tampilan Data Pengukuran</h1>
       
                            <h4 class="pull-right">
                                <a href="index_sto.jsp?lokasi_sto=<%=lokasi%>"><button class="btn btn-success">Kembali</button></a>
                            </h4>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="table-responsive">
                        <%  while (rs.next()) {
                        %>

                        <table align= "center" class="tg table table-condensed">
                            <tr>
                                <th class="tg-0lax" colspan="3">Lokasi: Witel <%=rs.getString("lokasi_witel")%></th>
                                <th class="tg-0lax" colspan="2"></th>
                                <th class="tg-0lax" colspan="2">Tipe Kabel: <%=rs.getString("tipe_kabel")%></th>
                                <th rowspan="3">
                                    <a href="inputDataCore.jsp?tanggal=<%=rs.getString("tanggal")%>&&lokasi_sto=<%=lokasi%>&&core=<%=rs.getString("core")%>"><button class="btn btn-success"><i class="fa fa-plus-circle"></i> Tambah</button></a><br/><br/><br/>
                                    <a href="dataUpdate.jsp?lokasi_sto=<%=lokasi%>&&core=<%=rs.getString("core")%>"><button class="btn btn-success">Update</button></a>
                                </th>
                            </tr>
                            <tr>
                                <td class="tg-0lax" colspan="3">Lokasi OTB: <%=rs.getString("lokasi_sto")%></td>
                                <td class="tg-0lax" colspan="2">Panjang Kabel (Jarak)</td>
                                <td class="tg-0lax" colspan="2">Jenis Kabel: <%=rs.getString("jenis_kabel")%></td>
                            </tr>
                            <tr>
                                <td class="tg-0lax" colspan="3">Core Awal-Akhir: <%=rs.getString("core")%></td>
                                <td class="tg-0lay" colspan="2" ><%=rs.getString("pjg_kabel")%></td>
                                <td class="tg-0lax" colspan="2">Tanggal: <%=rs.getString("tanggal")%></td>
                            </tr>
                            
                            <br/><br/>

                            <%
                                try {
                                    Connection connection2 = null;
                                    Statement statement2 = null;
                                    ResultSet ra = null;
                                    MyConnector connector2 = new MyConnector();
                                    connector2.createConnection();
                                    connection2 = connector2.getConnection();
                                    statement2 = connection2.createStatement();
                                    String Data2 = "select * from tb_data where core = '" + core + "' and tanggal = '" + rs.getString("tanggal") + "' and core = '" + rs.getString("core") + "' ";

                                    ra = statement2.executeQuery(Data2);
                            %>

                            <tr>
                                <td class="tg-0lay">Core Awal</td>
                                <td class="tg-0lay">User/Status</td>
                                <td class="tg-0lay">Hasil Ukur</td>
                                <td class="tg-0lay">Att (db/km)</td>
                                <td class="tg-0lay">Total los</td>
                                <td class="tg-0lay">Keterangan</td>
                                <td class="tg-0lay">Action</td>
                            </tr>

                            <%
                                while (ra.next()) {
                            %>

                            <tr>
                                <td class="tg-0lay"><%=ra.getString("core_awal")%></td>
                                <td class="tg-0lay"><%=ra.getString("user")%></td>
                                <td class="tg-0lay"><%=ra.getString("hasil_ukur")%></td>
                                <td class="tg-0lay"><%=ra.getString("redaman")%></td>
                                <td class="tg-0lay"><%=ra.getString("total_los")%></td>
                                <td class="tg-0laz"><%=ra.getString("keterangan")%></td>
                                <td class="tg-0lay">
                                    <a href="coreUpdate.jsp?lokasi_sto=<%=lokasi%>&&core=<%=ra.getString("core")%>&&tanggal=<%=ra.getString("tanggal")%>&&core_awal=<%=ra.getString("core_awal")%>"><button class="btn btn-success">Update</button></a>
                                </td>
                            </tr>

                            <%
                                            } //while data

                                            ra.close();
                                            statement2.close();
                                            connection2.close();
                                        } catch (Exception ex) {
                                            out.println("Can't connect to database tb_data " + ex.toString());
                                        }

                                    } //while head data

                                    rs.close();
                                    statement.close();
                                    connection.close();
                                } catch (Exception ex) {
                                    out.println("Can't connect to database tb_lokasi " + ex.toString());
                                }

                            %>
                        </table>


                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->
        </div>



        <!-- jQuery -->
        <script src="../vendor/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="../vendor/metisMenu/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->

        <script src="../vendor/datatables/js/jquery.dataTables.min.js"></script>
        <script src="../assets/Buttons-1.5.4/js/dataTables.buttons.js"></script>
        <script src="../assets/JSZip-2.5.0/jszip.min.js"></script>
        <script src="../assets/pdfmake-0.1.36/pdfmake.min.js"></script>
        <script src="../assets/pdfmake-0.1.36/vfs_fonts.js"></script>
        <script src="../assets/Buttons-1.5.4/js/buttons.html5.min.js"></script>        
        <script src="../assets/Buttons-1.5.4/js/buttons.flash.min.js"></script>        
        <script src="../vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
        <script src="../vendor/datatables-responsive/dataTables.responsive.js"></script>
        <script src="../assets/Buttons-1.5.4/js/buttons.colVis.min.js"></script>
        <script src="../assets/Buttons-1.5.4/js/buttons.print.min.js"></script>
        <script src="../dist/js/sb-admin-2.js"></script>
        <script src="../assets/js/rd.validator.js"></script>
        <script src="../assets/js/bootbox.min.js"></script>

        <script>
                                    function goBack() {
                                        window.history.back();
                                    }
        </script>
    </body>
</html>