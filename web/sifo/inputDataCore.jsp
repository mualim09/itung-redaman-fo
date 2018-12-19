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

<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="../assets/css/style-forms.css" rel="stylesheet" type="text/css" >

        <jsp:include page="../share/header.jsp"/>

    </head>

    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <jsp:include page="../share/navigation-right.jsp" />


            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Input Data Core</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>

                    <%
                        String status = request.getParameter("status");
                        if (status != null) {
                            if (status.equalsIgnoreCase("berhasil")) {
                                out.print("<script>alert('Data Berhasil Di Input')</script>");
                            } else {
                                out.print("<script>alert('Data Gagal Di Input')</script>");
                            }
                        }
                    %>

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
                            String Data = "select * from tb_lokasi group by lokasi_sto";

                            rs = statement.executeQuery(Data);
                    %>
                        <h4 class="pull-right">
                            <a href="dataCore.jsp?core=<%=core%>&&lokasi_sto=<%=lokasi%>"><button class="btn btn-success">Kembali</button></a>
                        </h4>
                    <%  while (rs.next()) {
                    %>

                    <!-- /.row -->
                    <div class="row">
                        
                        <%   }
                        %> 

                        <%
                                rs.close();
                                statement.close();
                                connection.close();
                            } catch (Exception ex) {
                                out.println("Can't connect to database.");
                            }
                        %>

                        <div class="register">
                            <form action="inputDataCore" class="form-style-5" method="post" >
                            <fieldset>
                                    <input type="text" name="tanggal" value ="<%=request.getParameter("tanggal")%>" hidden> 
                                    <!--<font color="black">Core-Akhir</font>-->
                                    <input type="text" name="core" value ="<%=request.getParameter("core")%>" hidden> 
                                    <font color="black">Core Awal</font>
                                    <input type="text" name="core_awal" required>             
                                    <font color="black">User</font>
                                    <input type="text" name="user">
                                    <font color="black">Hasil Ukur</font>
                                    <input type="text" name="hasil_ukur">   
                                    <font color="black">Att (db/km)
                                    <input type="text" name="redaman">
                                    <font color="black">Total los</font>
                                    <input type="text" name="total_los">
                                    <font color="black">Keterangan</font>
                                    <input type="text" name="keterangan">
                                </fieldset>
                                <!--<input type="submit" value="INPUT"/>-->
                                <button class="btn btn-success">Tambah</button>
                            </form>
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