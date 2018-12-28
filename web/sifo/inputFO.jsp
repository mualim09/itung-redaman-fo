<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="database.*"%>
<%@page import="Model.*"%>
<%@page import="Controller.*"%>
<%@page import="dbcon.MyConnector"%>

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

            <%
                String core = request.getParameter("core");
                String lokasi = request.getParameter("lokasi_sto");
                
            %>

           

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Input Data Core</h1>

                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <h4 class="pull-right">
                            <a href="index_sto.jsp?lokasi_sto=<%=lokasi%>"><button class="btn btn-success">Kembali</button></a>
                        </h4>

                        <div class="register">
                            <form action="inputFO" class="form-style-5" method="post" >                  
                                <fieldset>
                                    <!--<input type="text" name="nomor" value ="0" hidden>-->   
                                    <font color="black">Lokasi Witel</font>
                                    <input type="text" name="lokasi_witel" value="Tasikmalaya" required>             
                                    <font color="black">Lokasi STO</font>
                                    <input type="text" name="lokasi_sto" value="<%=lokasi%>" required>
                                    <font color="black">Core Awal-Akhir</font>
                                    <input type="text" name="core" required>   
                                    <font color="black">Panjang Kabel</font>
                                    <input type="text" name="pjg_kabel" required>
                                    <font color="black">Tipe Kabel</font>
                                    <input type="text" name="tipe_kabel" required>
                                    <font color="black">Jenis Kabel</font>
                                    <input type="text" name="jenis_kabel" required>
                                    <font color="black">Tanggal</font>
                                    <input type="text" name="tanggal" required>
                                    <br/><br/>
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