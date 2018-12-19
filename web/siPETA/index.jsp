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
                            <h1 class="page-header">siPETA Witel Tasikmalaya</h1>                        
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-md-4">
                            <div class="thumbnail"><img src="../assets/images/locsto.png" alt="Thumbnail Image 1" style="padding-top: 10px;" >
                                <div class="caption">
                                    <center>           
                                        <a href="lokasiSTO.jsp" class="btn btn-success"  role="button">
                                            <font size="2px">Lokasi STO</font>
                                        </a>
                                    </center>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="thumbnail"><img src="../assets/images/locbts.jpg" alt="Thumbnail Image 1" style="padding-top: 10px;" >
                                <div class="caption">
                                    <center>           
                                        <a href="lokasiBTS.jsp" class="btn btn-success"  role="button">
                                            <font size="2px">Lokasi BTS</font>
                                        </a>
                                    </center>
                                </div>
                            </div>
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

        <!--        <script src="js/jquery-1.11.2.min.js"></script>
                <script src="js/bootstrap-3.3.4.js" type="text/javascript"></script>-->

    </body>
</html>