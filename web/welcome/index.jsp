<%-- 
    Document   : index
    Created on : Nov 21, 2018, 2:56:53 PM
    Author     : Lenovo
--%>

<%@page import="helper.MySession"%>
<%
    String nik = (String) session.getAttribute(MySession.NIK);
    if(nik != null){
        response.sendRedirect("../manage_bbm");
        return;
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <!-- Site made with Mobirise Website Builder v4.8.6, https://mobirise.com -->
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="generator" content="Mobirise v4.8.6, mobirise.com">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
        <link rel="shortcut icon" href="../assets/images/telkom-indonesia-logo-logotype-128x70.png" type="image/x-icon">
        <meta name="description" content="Website Builder Description">
        <title>Welcome to InfoCentre</title>
        <link rel="stylesheet" href="../assets/web/assets/mobirise-icons/mobirise-icons.css">
        <link rel="stylesheet" href="../assets/tether/tether.min.css">
        <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap-grid.min.css">
        <!--<link rel="stylesheet" href="../assets/bootstrap/css/bootstrap-reboot.min.css">-->
        <link rel="stylesheet" href="../assets/dropdown/css/style.css">
        <link rel="stylesheet" href="../assets/socicon/css/styles.css">
        <link rel="stylesheet" href="../assets/theme/css/style.css">
        <link rel="stylesheet" href="../assets/mobirise/css/mbr-additional.css" type="text/css">
        <link rel="stylesheet" href="../assets/css/all.min.css" type="text/css">
        <link href="../assets/css/loader.css" rel="stylesheet">

        <script src="../assets/js/all.min.js"></script>
        <script>
            window.history.forward();
        </script>



    </head>
    <body>
        <section class="menu cid-r99tZsEbUM" once="menu" id="menu2-5">



            <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <div class="hamburger">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </button>
                <div class="menu-logo">
                    <div class="navbar-brand">
                        <span class="navbar-logo">
                            <a href="https://portal.telkom.co.id" target="_blank">
                                <img src="../assets/images/telkom-indonesia-logo-logotype-122x67.png" alt="Mobirise" title="" style="height: 3.8rem;">
                            </a>
                        </span>
                        <span class="navbar-caption-wrap"><a class="navbar-caption text-black display-4" href="https://mobirise.co"><p>InfoCentre</p></a></span>
                    </div>
                </div>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    <div class="navbar-buttons mbr-section-btn">
                        <a class="btn btn-sm btn-secondary-outline display-4" href="#" data-toggle="modal" data-target="#modalLogin"><span class="mbri-login mbr-iconfont mbr-iconfont-btn"></span>Login</a> 
                </div>
            </nav>
        </section>

        <section class="engine"><a href="https://mobirise.info/m">website design templates</a></section><section class="mbr-section content4 cid-r99wRh7OmU" id="content4-6">



            <div class="container">
                <div class="media-container-row">
                    <div class="title col-12 col-md-8">
                        <h2 class="align-center pb-3 mbr-fonts-style display-2">
                            STO Tasikmalaya InfoCentre</h2>
                        <h3 class="mbr-section-subtitle align-center mbr-light mbr-fonts-style display-5">
                            Digitalize your data with STiC.<br>Make it available online!</h3>

                    </div>
                </div>
            </div>
        </section>

        <section class="features11 cid-r99Dy226Qt" id="features11-8">
         
            <div class="container">   
                <div class="col-md-12">
                    <div class="media-container-row">
                        <div class="mbr-figure" style="width: 50%;">
                            <img src="../assets/images/photo6289805264135760094-952x714.jpg" alt="Kegiatan" title="">
                        </div>
                        <div class=" align-left aside-content">
                            <h2 class="mbr-title pt-2 mbr-fonts-style display-2">Tujuan</h2>
                            <div class="mbr-section-text">
                                <p class="mbr-text mb-5 pt-3 mbr-light mbr-fonts-style display-5">
                                    Tujuan utama pembangunan STiC ini adalah agar data-data yang ada di STO Tasikmalaya dapat didigitalisasi sehingga dapat disediakan online. Dengan itu akan memudahkan seluruh warga STO Tasikmalaya untuk monitoring data.</p>
                            </div>

<!--                            <div class="block-content">
                                <div class="card p-3 pr-3">
                                    <div class="media">
                                        <div class=" align-self-center card-img pb-3">
                                            <span class="mbri-extension mbr-iconfont"></span>
                                        </div>     
                                        <div class="media-body">
                                            <h4 class="card-title mbr-fonts-style display-7">
                                                Profil Unit</h4>
                                        </div>
                                    </div>                

                                    <div class="card-box">
                                        <p class="block-text mbr-fonts-style display-7">Tahu tidak apa saja yang ada di STO Tasikmalaya? Mau tahu? Langsung saja <em>login </em>dan dapatkan segala info tentang unit-unit yang ada dan kekuatan anggota unit tersebut.&nbsp;</p>
                                    </div>
                                </div>

                                <div class="card p-3 pr-3">
                                    <div class="media">
                                        <div class="align-self-center card-img pb-3">
                                            <span class="mbr-iconfont mbri-database"></span>
                                        </div>     
                                        <div class="media-body">
                                            <h4 class="card-title mbr-fonts-style display-7">
                                                Laporan</h4>
                                        </div>
                                    </div>                

                                    <div class="card-box">
                                        <p class="block-text mbr-fonts-style display-7">
                                            Akses laporan terkini tentang data stok dan inventaris yang dikontrol oleh STO Tasikmalaya.</p>
                                    </div>
                                </div>
                            </div>-->
                        </div>
                    </div>
                </div> 
            </div> 
            
        </section>

        <section class="cid-r9aood31eD mbr-reveal" id="footer1-4">





            <div class="container">
                <div class="media-container-row content text-white">
                    <div class="col-12 col-md-3">
                        <div class="media-wrap">
                            <a href="https://mobirise.co/">
                                <img src="../assets/images/telkom-indonesia-logo-logotype-122x67.png" alt="Mobirise" title="">
                            </a>
                        </div>
                    </div>
                    <div class="col-12 col-md-3 mbr-fonts-style display-7">
                        <h5 class="pb-3">
                            Address
                        </h5>
                        <p class="mbr-text">Jl. Mayor Utarya No.4, Yudanagara, Cihideung, Tasikmalaya, Jawa Barat 46113</p>
                    </div>
                    <div class="col-12 col-md-3 mbr-fonts-style display-7">
                        <h5 class="pb-3">
                            Contacts
                        </h5>
                        <p class="mbr-text">
                            Email: sto.tasik@telkom.co.id<br>Phone: +1 (0) 000 0000 001
                            <br>Fax: +1 (0) 000 0000 002
                        </p>
                    </div>
                    <div class="col-12 col-md-3 mbr-fonts-style display-7">
                        <h5 class="pb-3">
                            Links
                        </h5>
                        <p class="mbr-text">
                            <a class="text-secondary" href="https://backbone.telkom.co.id">Backbone&nbsp;</a><br><a href="https://weathermap.telkom.co.id" class="text-secondary">Wheathermap</a><br><a class="text-secondary" href="https://portal.telkom.co.id">KBMOnline</a></p>
                    </div>
                </div>
                <div class="footer-lower">
                    <div class="media-container-row">
                        <div class="col-sm-12">
                            <hr>
                        </div>
                    </div>
                    <div class="media-container-row mbr-white">
                        <div class="col-sm-6 copyright">
                            <p class="mbr-text mbr-fonts-style display-7">
                                © Copyright 2018 STO Tasikmalaya InfoCentre - All Rights Reserved
                            </p>
                        </div>
                        <div class="col-md-6">
                            <div class="social-list align-right">
                                <div class="soc-item">
                                    <a href="https://twitter.com/" target="_blank">
                                        <span class="mbr-iconfont mbr-iconfont-social socicon-twitter socicon" style="color: rgb(252, 15, 15); fill: rgb(252, 15, 15);"></span>
                                    </a>
                                </div>
                                <div class="soc-item">
                                    <a href="https://www.facebook.com/" target="_blank">
                                        <span class="mbr-iconfont mbr-iconfont-social socicon-facebook socicon" style="color: rgb(252, 15, 15); fill: rgb(252, 15, 15);"></span>
                                    </a>
                                </div>
                                <div class="soc-item">
                                    <a href="https://www.youtube.com/" target="_blank">
                                        <span class="mbr-iconfont mbr-iconfont-social socicon-youtube socicon" style="color: rgb(252, 15, 15); fill: rgb(252, 15, 15);"></span>
                                    </a>
                                </div>
                                <div class="soc-item">
                                    <a href="https://instagram.com/" target="_blank">
                                        <span class="mbr-iconfont mbr-iconfont-social socicon-instagram socicon" style="color: rgb(252, 15, 15); fill: rgb(252, 15, 15);"></span>
                                    </a>
                                </div>
                                <div class="soc-item">
                                    <a href="https://plus.google.com/" target="_blank">
                                        <span class="mbr-iconfont mbr-iconfont-social socicon-googleplus socicon" style="color: rgb(252, 15, 15); fill: rgb(252, 15, 15);"></span>
                                    </a>
                                </div>
                                <div class="soc-item">
                                    <a href="https://www.behance.net/" target="_blank">
                                        <span class="mbr-iconfont mbr-iconfont-social socicon-behance socicon" style="color: rgb(252, 15, 15); fill: rgb(252, 15, 15);"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Modal -->
        <div id="modalLogin" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Login</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>                        
                    </div>
                    <div class="modal-body">
                        <form id="formLogin" class="form-horizontal">
                            <fieldset>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="loginNIK">NIK</label>  
                                    <div class="col-md-6">
                                        <input id="loginNIK" name="" type="text" placeholder="NIK anda" class="form-control input-md" required="" maxlength="10">

                                    </div>
                                </div>

                                <!-- Password input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="loginPwd">Password </label>
                                    <div class="col-md-6">
                                        <input id="loginPwd" name="loginPwd" type="password" placeholder="Kata Sandi anda" class="form-control input-md" required="" maxlength="20">

                                    </div>
                                </div>

                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnLogin" type="button" class="btn btn-secondary-outline display-4 " >Login</button>
                    </div>
                </div>

            </div>
        </div>

        <script src="../assets/web/assets/jquery/jquery.min.js"></script>
        <script src="../assets/popper/popper.min.js"></script>
        <script src="../assets/tether/tether.min.js"></script>
        <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="../assets/smoothscroll/smooth-scroll.js"></script>
        <script src="../assets/dropdown/js/script.min.js"></script>
        <script src="../assets/touchswipe/jquery.touch-swipe.min.js"></script>
        <script src="../assets/theme/js/script.js"></script>
        <script src="../assets/js/bootbox.min.js"></script>
        <script src="../assets/js/rd.loading.js"></script>

        <script>
            $(function () {

               
                $('#btnLogin').on('click', function (e) {
                    e.preventDefault();
                    var $form = $('#formLogin');
                    if (!$form[0].checkValidity()) {
                        $('<input type="submit">').hide().appendTo($form).click().remove();
                        return false;
                    }
                    var nik = $("#loginNIK").val();
                    var pwd = $("#loginPwd").val();

                    var inputData = {
                        nik: nik,
                        pwd: pwd
                    };
                    
                    $("#modalLogin").css("overflow", "auto");
                    $.ajax({
                        type: 'POST',
                        url: "login_process.jsp",
                        timeout: 60000,
                        data: inputData,
                        dataType: 'json',
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            if (data.isValid) {
                                window.location.replace(data.msg);
                            } else {
                                alert(data.msg);
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            alert("Ops! Something went wrong. Try again later!");
                            console.log(errorThrown);
                        },
                        complete: function (jqXHR, textStatus) {
                            
                        }

                    });

                });

            });
        </script>

    </body>
</html>
