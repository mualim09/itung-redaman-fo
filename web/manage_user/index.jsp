<%-- 
    Document   : newjspindex
    Created on : Nov 23, 2018, 10:28:46 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                            <h1 class="page-header">Manage User</h1>                        
                        </div>
                        <h4 class="pull-right">
                            <button class="btn btn-success"><i class="fa fa-plus-circle"></i> Add User</button>
                        </h4>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-condensed">
                                <thead>
                                    <tr>
                                        <th>NIK</th>
                                        <th>Name</th>
                                        <th>Phone</th>
                                        <th>Email</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>960089</td>
                                        <td>Ardhi Surya Ibrahim</td>
                                        <td>082213458679</td>
                                        <td>rdsurya147@gmail.com</td>
                                        <td>
                                            <button class="btn btn-default"><i class="fa fa-edit"></i></button>
                                            <button class="btn btn-warning"><i class="fa fa-key"></i></button>
                                            <button class="btn btn-danger"><i class="fa fa-times-circle"></i></button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- jQuery -->
        <script src="../vendor/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="../vendor/metisMenu/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="../dist/js/sb-admin-2.js"></script>

        <script>

        </script>

    </body>

</html>

