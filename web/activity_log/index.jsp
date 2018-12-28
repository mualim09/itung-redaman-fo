<%-- 
    Document   : newjspindex
    Created on : Nov 23, 2018, 10:28:46 AM
    Author     : Lenovo
--%>
<%@page import="helper.MySession"%>
<%
    int userLevel = Integer.parseInt((String) session.getAttribute(MySession.USER_LEVEL));
    if(userLevel >1){
        response.sendRedirect("../sifo");
    }
%>
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

        <style>
            tfoot {
                display: table-header-group;
            }
        </style>


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
                            <h1 class="page-header">Log Aktivitas</h1>                        
                        </div>

                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div id="divTable" class="table-responsive">

                        </div>

                    </div>
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->



        <!--jquery here-->
        <jsp:include page="../share/javascript.jsp"/>

        <script>
            $(function () {

                function loadTable(dialog) {
                    $('#divTable').load("control/table.jsp", function () {
                        if (dialog != null) {
                            dialog.modal('hide');
                        }
                    });

                }

                loadTable(createLoadingDialog(null));

            });// end function ready
        </script>

    </body>

</html>

