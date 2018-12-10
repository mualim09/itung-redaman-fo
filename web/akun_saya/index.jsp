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
                            <h1 class="page-header">Akun Saya</h1>                        
                        </div>

                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div style="width: 50%; margin: auto;">
                            <div class="text-left">
                                <p>Nama: <b id="name">-</b></p>
                                <p>NIK: <b id="nik">-</b></p>
                                <p>Nomer telepon: <b id="telp">-</b> <button id="btnTelpModal" class="btn btn-default"><i class="fa fa-edit"></i></button></p>
                                <p>Email: <b id="email">-</b> <button id="btnEmailModal" class="btn btn-default"><i class="fa fa-edit"></i></button></p>
                                <p>&nbsp;</p>
                                <p class="text-center"><button id="btnPwdModal" class="btn btn-default"><i class="fa fa-key"></i> Ganti Sandi</button></p>

                            </div>
                        </div>

                    </div>
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- Modal -->
        <div class="modal fade" id="modalTelepon" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog ">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Ganti Nomor Telepon</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formTelepon">
                            <fieldset>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nomor Telepon</label>  
                                    <div class="col-md-6">
                                        <input id="inTelp" name="textinput" type="text" placeholder="Nomer telepon baru" class="form-control input-md">

                                    </div>
                                </div>


                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnUpdateTelp" type="button" class="btn btn-success" >Simpan</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <!-- Modal -->
        <div class="modal fade" id="modalEmail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog ">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Ganti Email</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formEmail">
                            <fieldset>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Email</label>  
                                    <div class="col-md-6">
                                        <input id="inEmail" name="textinput" type="text" placeholder="Email baru" class="form-control input-md">

                                    </div>
                                </div>                                
                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnUpdateEmail" type="button" class="btn btn-success" >Simpan</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <!-- Modal -->
        <div class="modal fade" id="modalPwd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Ganti Kata Sandi</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formPwd">
                            <fieldset>

                                <!-- Password input-->
                                <div class="form-group ">
                                    <label class="col-md-4 control-label" for="inPwd1">Kata Sandi Lama </label>
                                    <div class="col-md-6">
                                        <input id="inCPwd1" name="inCPwd1" type="password" placeholder="Sandi lama" class="form-control input-md" required="" minlength="3" maxlength="100">

                                    </div>
                                </div>

                                <!-- Password input-->
                                <div class="form-group ">
                                    <label class="col-md-4 control-label" for="inPwd2">Kata Sandi Baru</label>
                                    <div class="col-md-6">
                                        <input id="inCPwd2" name="inCPwd2" type="password" placeholder="Sandi Baru" class="form-control input-md" required="" minlength="3" maxlength="100">
                                    </div>
                                </div>

                                <!-- Password input-->
                                <div class="form-group ">
                                    <label class="col-md-4 control-label" for="inPwd2">Konfirmasi Kata Sandi</label>
                                    <div class="col-md-6">
                                        <input id="inCPwd3" name="inCPwd2" type="password" placeholder="Ulangi sandi baru" class="form-control input-md" required="" minlength="3" maxlength="100">
                                    </div>
                                </div>

                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnChangePwd" type="button" class="btn btn-primary forUpdate">Simpan</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->


        <!--jquery here-->
        <jsp:include page="../share/javascript.jsp"/>

        <script>
            $(function () {

                function loadInfo() {
                    $.ajax({
                        type: 'GET',
                        url: "control/getInfo.jsp",
                        dataType: 'json',
                        timeout: 60000,
                        success: function (data, textStatus, jqXHR) {
                            if (!data.isValid) {
                                bootbox.alert(data.msg, function () {
                                    location.replace("../welcome/logout.jsp");
                                });
                            }
                            $('#name').text(data.name);
                            $('#nik').text(data.nik);
                            $('#telp').text(data.telp);
                            $('#email').text(data.email);
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            createErrorAlert(null, errorThrown);
                        }
                    });
                }// end function info

                loadInfo();

                $('#btnTelpModal').on('click', function () {
                    $('#modalTelepon').modal('show');
                });

                $('#btnUpdateTelp').on('click', function () {
                    var telp = $('#inTelp').val();

                    if (telp === "") {
                        bootbox.alert("Isi nomor telepon yang baru");
                        return;
                    }
                    if (!validatePhonenumber(telp)) {
                        bootbox.alert("Format nomor telepon tidak valid");
                        return;
                    }

                    var inData = {telp: telp};
                    var dialog = createLoadingDialog(null);
                    $.ajax({
                        type: 'POST',
                        url: "control/updatePhone.jsp",
                        data: inData,
                        timeout: 60000,
                        dataType: 'json',
                        success: function (data, textStatus, jqXHR) {
                            bootbox.alert(data.msg);
                            $('#modalTelepon').modal('hide');
                            $('#inTelp').val("");
                            $('#telp').text(telp);
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            createErrorAlert(null, errorThrown);
                        },
                        complete: function (jqXHR, textStatus) {
                            dialog.modal('hide');
                        }
                    });
                });

                $('#btnEmailModal').on('click', function () {
                    $('#modalEmail').modal('show');
                });

                $('#btnUpdateEmail').on('click', function () {
                    var email = $('#inEmail').val();

                    if (email === "") {
                        bootbox.alert("Isi email yang baru");
                        return;
                    }
                    if (!validateEmail(email)) {
                        bootbox.alert("Format email tidak valid");
                        return;
                    }

                    var inData = {email: email};
                    var dialog = createLoadingDialog(null);
                    $.ajax({
                        type: 'POST',
                        url: "control/updateEmail.jsp",
                        data: inData,
                        timeout: 60000,
                        dataType: 'json',
                        success: function (data, textStatus, jqXHR) {
                            bootbox.alert(data.msg);
                            $('#modalEmail').modal('hide');
                            $('#inEmail').val("");
                            $('#email').text(email);
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            createErrorAlert(null, errorThrown);
                        },
                        complete: function (jqXHR, textStatus) {
                            dialog.modal('hide');
                        }
                    });
                });

                $('#btnPwdModal').on('click', function () {
                    $('#modalPwd').modal('show');
                });

                $('#btnChangePwd').on('click', function () {
                    var $pwd1 = $('#inCPwd1');
                    var $pwd2 = $('#inCPwd2');
                    var $pwd3 = $('#inCPwd3');
                    
                    var $form = $('#formPwd');
                    
                    if (!$form[0].checkValidity()) {
                        $('<input type="submit">').hide().appendTo($form).click().remove();
                        return false;
                    }
                    
                    if ($pwd1.val() === "" || $pwd2.val() === "" || $pwd3.val() === "") {
                        bootbox.alert("Lengkapkan semua field");
                        return;
                    }

                    if ($pwd2.val() !== $pwd3.val()) {
                        bootbox.alert("Kata sandi baru anda tidak sama!");
                        $pwd2.val("");
                        $pwd3.val("");
                        return;
                    }

                    var inData = {
                        pwd1: $pwd1.val(),
                        pwd2: $pwd2.val()
                    };

                    var dialog = createLoadingDialog(null);
                    $.ajax({
                        type: 'POST',
                        url: "control/changePassword.jsp",
                        timeout: 60000,
                        data: inData,
                        dataType: 'json',
                        success: function (data, textStatus, jqXHR) {
                            bootbox.alert(data.msg, function () {
                                if (data.isValid) {
                                    $('#modalPwd').modal('hide');
                                    location.replace("../welcome/logout.jsp");
                                }
                                else{
                                    $pwd1.val("");
                                }
                            });

                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            createErrorAlert(null, errorThrown);
                        },
                        complete: function (jqXHR, textStatus) {
                            dialog.modal('hide');
                        }
                    });


                });

            });// end function ready
        </script>

    </body>

</html>

