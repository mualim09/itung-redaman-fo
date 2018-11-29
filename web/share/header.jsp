<%-- 
    Document   : header
    Created on : Nov 23, 2018, 11:32:50 AM
    Author     : Lenovo
--%>

<%@page import="helper.SessionChecker"%>
<title>InfoCentre</title>
<link rel="shortcut icon" href="../assets/images/telkom-indonesia-logo-logotype-128x70.png" type="image/x-icon">
<!-- Bootstrap Core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="../assets/css/infoCentre.css" rel="stylesheet" type="text/css">
<link href="../vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet" type="text/css">
<link href="../vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet" type="text/css">
<link href="../assets/Buttons-1.5.4/css/buttons.dataTables.min.css" rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script>
    window.history.forward();
</script>
<%
    SessionChecker.isSessionValid(request, response);
%>