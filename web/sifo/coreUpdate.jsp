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

    <style type="text/css">
        .tg  {border-collapse:collapse;border-spacing:0;}
        .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
        .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
        .tg .tg-0lax{text-align:left;vertical-align:top}
        .tg .tg-0lay{text-align:center;vertical-align:middle}
    </style>

    <body>

        <%
            String core_awal = request.getParameter("core_awal");
            String tanggal = request.getParameter("tanggal");
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
                statement = connection.createStatement();

                String Data = "select * from tb_data where core_awal = '" + core_awal + "' and tanggal = '" + tanggal + "' ";
                rs = statement.executeQuery(Data);

        %> 

        <%            while (rs.next()) {
        %>

        <div id="wrapper">

            <!-- Navigation -->
            <jsp:include page="../share/navigation-right.jsp" />


            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">UPDATE CORE AWAL <%=rs.getString("core_awal")%> <%=rs.getString("core")%></h1>

                            <h4 class="pull-right">
                                <a href="dataCore.jsp?lokasi_sto=<%=lokasi%>&&core=<%=core%>"><button class="btn btn-success">Kembali</button></a>
                            </h4>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">

                        <form action="update.jsp?lokasi_sto=<%=lokasi%>&&tanggal=<%=rs.getString("tanggal")%>&&core_awal=<%=rs.getString("core_awal")%>" method="POST">
                            <center><table class="tg">
                                    <tr>
                                        <th class="tg-0lax">Core Awal</th>
                                        <td class="tg-0lax">
                                            <input type="text" name="core_awal" value='<%=rs.getString("core_awal")%>'/></td>                                                                             
                                    </tr>

                                    <tr>
                                        <th class="tg-0lax">User</th>
                                        <td class="tg-0lay"><input type="text" name="user"  value='<%=rs.getString("user")%>'/></td>
                                    </tr>
                                    <tr>
                                        <th class="tg-0lax">Hasil Ukur </th>
                                        <td class="tg-yw4l">
                                            <input type="text" name="hasil_ukur" value='<%=rs.getString("hasil_ukur")%>'/></td>
                                    </tr>
                                    <tr>
                                        <th class="tg-0lax">Att (db/km) </th>
                                        <td class="tg-yw4l">
                                            <input type="text" name="redaman"  value='<%=rs.getString("redaman")%>'/></td>
                                    </tr>
                                    <tr>
                                        <th class="tg-0lax">Total los</th>
                                        <td class="tg-yw4l">
                                            <input type="text" name="total_los" value='<%=rs.getString("total_los")%>'/></td>
                                    </tr>
                                    <tr>
                                        <th class="tg-0lax">Keterangan </th>
                                        <td class="tg-yw4l">
                                            <input type="text" name="keterangan"  value='<%=rs.getString("keterangan")%>'/></td>
                                    </tr>
                                    <tr>
                                        <th colspan="2"><input type="submit" class="btn btn-success" value="UPDATE"></th>
                                    </tr>

                                    <input type="hidden" name="core" value='<%=rs.getString("core")%>' />
                                    <input type="hidden" name="tanggal" value='<%=rs.getString("core_awal")%>' />    
                                    <input type="hidden" name="core_awal" value='<%=rs.getString("core_awal")%>' />

                                    </tr>
                                </table>

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