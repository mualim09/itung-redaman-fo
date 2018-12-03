<%-- 
    Document   : index
    Created on : Nov 30, 2018, 4:45:49 PM
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
                            <h1 class="page-header">Stok BBM</h1>                        
                        </div>

                        <!-- /.col-lg-12 -->
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="col-md-4 control-label text-right" for="selectbasic">Pilih bulan:</label>
                                <div class="col-md-8">
                                    <select id="selectMonth" name="selectbasic" class="form-control">
                                        <option value="-">Pilih tanggal laporan</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="pull-right">
                                <button id="btnAddModal" class="btn btn-success"><i class="fa fa-plus-circle"></i> Tambah Laporan Bulanan</button>
                            </div>
                        </div>


                    </div>
                    <hr>

                    <div class="row">
                        <div class="text-center">
                            <h4><b>Witel: Tasikmalaya</b></h4>
                            <h4><b>Bulan: <span id="judulTanggal">?</span></b></h4>
                        </div>
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

        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formUser">
                            <fieldset>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">NIK</label>  
                                    <div class="col-md-6">
                                        <input id="inNIK" name="textinput" type="text" placeholder="NIK anda" class="form-control input-md" required="" maxlength="6">

                                    </div>
                                </div>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="inName">Name</label>  
                                    <div class="col-md-6">
                                        <input id="inName" name="inName" type="text" placeholder="Nama anda" class="form-control input-md" required="" maxlength="100">

                                    </div>
                                </div>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="inPhone">Phone</label>  
                                    <div class="col-md-6">
                                        <input id="inPhone" name="inPhone" type="text" placeholder="Nomer HP anda" class="form-control input-md" required="" maxlength="20">

                                    </div>
                                </div>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="inEmail">Email</label>  
                                    <div class="col-md-6">
                                        <input id="inEmail" name="inEmail" type="email" placeholder="Email anda" class="form-control input-md" required="" maxlength="100">

                                    </div>
                                </div>

                                <!-- Password input-->
                                <div class="form-group forAdd">
                                    <label class="col-md-4 control-label" for="inPwd1">Password </label>
                                    <div class="col-md-6">
                                        <input id="inPwd1" name="inPwd1" type="password" placeholder="Password anda" class="form-control input-md" required="" minlength="3" maxlength="100">

                                    </div>
                                </div>

                                <!-- Password input-->
                                <div class="form-group forAdd">
                                    <label class="col-md-4 control-label" for="inPwd2">Retype Password</label>
                                    <div class="col-md-6">
                                        <input id="inPwd2" name="inPwd2" type="password" placeholder="Konfirmasi password anda" class="form-control input-md" required="" minlength="3" maxlength="100">

                                    </div>
                                </div>

                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnAddUser" type="button" class="btn btn-success forAdd" >Add user</button>
                        <button id="btnUpdateUser" type="button" class="btn btn-primary forUpdate">Save changes</button>
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
                        <h4 class="modal-title">Change Password</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formPwd">
                            <fieldset>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">NIK</label>  
                                    <div class="col-md-6">
                                        <input id="inCNIK" name="textinput" type="text" placeholder="NIK anda" class="form-control input-md" required="" maxlength="6" disabled="">

                                    </div>
                                </div>

                                <!-- Password input-->
                                <div class="form-group ">
                                    <label class="col-md-4 control-label" for="inPwd1">Password </label>
                                    <div class="col-md-6">
                                        <input id="inCPwd1" name="inCPwd1" type="password" placeholder="Password anda" class="form-control input-md" required="" minlength="3" maxlength="100">

                                    </div>
                                </div>

                                <!-- Password input-->
                                <div class="form-group ">
                                    <label class="col-md-4 control-label" for="inPwd2">Retype Password</label>
                                    <div class="col-md-6">
                                        <input id="inCPwd2" name="inCPwd2" type="password" placeholder="Konfirmasi password anda" class="form-control input-md" required="" minlength="3" maxlength="100">

                                    </div>
                                </div>

                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnChangePwd" type="button" class="btn btn-primary forUpdate">Save password</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->


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
            $(function () {

                function loadTanggal() {
                    
                    $.ajax({
                        type: 'GET',
                        url: "control/date_list.jsp",
                        timeout: 60000,
                        dataType: 'json',
                        success: function (data, textStatus, jqXHR) {
                            if(!data.isValid){
                                bootbox.alert(data.msg);
                                return;
                            }
                            
                            var arrData = data.tanggal;
                            var strHTML='';
                            for(i in arrData){
                                strHTML +='<option value="'+arrData[i].value+'">'+arrData[i].name+'</option>';
                            }
                            $('#selectMonth').html(strHTML);
                            $('#judulTanggal').text(arrData[0].name);
                            
                        },
                        error: function (jqXHR, textStatus, errorThrown) {

                        },
                        complete: function (jqXHR, textStatus) {

                        }
                    });
                }
                
                loadTanggal();

                loadTable("-", null);
                
                $('#selectMonth').on('change', function(){
                    var tanggal = $(this).val();
                    console.log(tanggal);
                    var dialog = bootbox.dialog({
                            message: '<p class="text-center"><i class="fa fa-spin fa-spinner"></i> Loading...</p>',
                            closeButton: false
                        });
                    loadTable(tanggal, dialog);
                   
                    var nama = $(this).find('option:selected').text();
                    $('#judulTanggal').text(nama);
                });

                $('#btnAddModal').on('click', function () {
                    $("#myModal").modal('show');
                    $(".forAdd").show();
                    $(".forUpdate").hide();
                    $('#myModalLabel').text('Add New User');
                    $('#inNIK').prop('disabled', false);
                });

                function loadTable(tanggal, dialog) {
                    $('#divTable').html('');
                    $('#divTable').load('control/table.jsp', {'tanggal': tanggal}, function(){
                        if(dialog != null){
                            dialog.modal('hide');
                        }
                    });
                }

                function validateUser() {
                    var $form = $('#formUser');

                    if (!$form[0].checkValidity()) {
                        $('<input type="submit">').hide().appendTo($form).click().remove();
                        return false;
                    }
                    var $phone = $('#inPhone');
                    if (!validatePhonenumber($phone.val())) {
                        bootbox.alert("<b class='text-danger'>Invalid phone number</b>");
                        $phone.val('');
                        return false;
                    }

                    var $email = $('#inEmail');
                    if (!validateEmail($email.val())) {
                        bootbox.alert("<b class='text-danger'>Invalid email</b>");
                        $email.val('');
                        return false;
                    }

                    var $pwd1 = $('#inPwd1');
                    var $pwd2 = $('#inPwd2');
                    if ($pwd1.val() !== $pwd2.val()) {
                        bootbox.alert("<b class='text-danger'>Password does not match!</b>");
                        $pwd1.val('');
                        $pwd2.val('');
                        return false;
                    }

                    return true;
                }

                $('#btnAddUser').on('click', function () {

                    if (validateUser()) {
                        var $pwd1 = $('#inPwd1');
                        var $nik = $('#inNIK');
                        var $name = $('#inName');
                        var $phone = $('#inPhone');
                        var $email = $('#inEmail');

                        var name = $name.val();
                        name = name.replace(/'/g, "\\\'").replace(/"/g, "\\\"");

                        var inputData = {
                            nik: $nik.val(),
                            name: name,
                            phone: $phone.val(),
                            email: $email.val(),
                            pwd: $pwd1.val()
                        };

                        var dialog = bootbox.dialog({
                            message: '<p class="text-center"><i class="fa fa-spin fa-spinner"></i> Loading...</p>',
                            closeButton: false
                        });

                        $.ajax({
                            type: 'POST',
                            url: "control/addUser.jsp",
                            data: inputData,
                            dataType: 'json',
                            timeout: 60000,
                            success: function (data, textStatus, jqXHR) {
                                bootbox.alert(data.msg);
                                if (data.isValid) {
                                    $('#formUser')[0].reset();
                                    $('#myModal').modal('hide');
                                    loadTableUser();
                                }
                            },
                            error: function (jqXHR, textStatus, errorThrown) {
                                bootbox.alert("Oops! Something went wrong. Try again later...");
                                console.log(errorThrown);
                            },
                            complete: function (jqXHR, textStatus) {
                                dialog.modal('hide');
                            }
                        });
                    }

                });

                $('#divTable').on('click', '#btnUpdateModal', function () {
                    $('#myModalLabel').text('Update User');
                    $('.forAdd').hide();
                    $('.forUpdate').show();
                    $('#inPwd1').val('abc123');
                    $('#inPwd2').val('abc123');
                    $('#myModal').modal('show');
                    var hidden = $(this).closest('td').find('#hiddenInput').text();
                    var obj = JSON.parse(hidden);
                    $('#inNIK').prop('disabled', true);

                    $('#inNIK').val(obj.nik);
                    $('#inName').val(obj.name);
                    $('#inPhone').val(obj.phone);
                    $('#inEmail').val(obj.email);
                });

                $('#btnUpdateUser').on('click', function () {
                    if (validateUser()) {

                        var name = $('#inName').val();
                        name = name.replace(/'/g, "\\\'").replace(/"/g, "\\\"");
                        var inputData = {
                            name: name,
                            nik: $('#inNIK').val(),
                            phone: $('#inPhone').val(),
                            email: $('#inEmail').val()
                        };
                        var dialog = bootbox.dialog({
                            message: '<p class="text-center"><i class="fa fa-spin fa-spinner"></i> Loading...</p>',
                            closeButton: false
                        });

                        $.ajax({
                            type: 'POST',
                            timeout: 60000,
                            url: "control/updateUser.jsp",
                            data: inputData,
                            dataType: 'json',
                            success: function (data, textStatus, jqXHR) {
                                bootbox.alert(data.msg);
                                if (data.isValid) {
                                    loadTableUser();
                                    $('#formUser')[0].reset();
                                    $('#myModal').modal('hide');
                                }
                            },
                            error: function (jqXHR, textStatus, errorThrown) {
                                bootbox.alert('Oops!. Try again later.');
                                console.log(errorThrown);
                            },
                            complete: function (jqXHR, textStatus) {
                                dialog.modal('hide');
                            }
                        });
                    }
                });

                $('#divTable').on('click', '#btnPwdModal', function () {
                    $('#modalPwd').modal('show');
                    var hidden = $(this).closest('td').find('#hiddenInput').text();
                    console.log(hidden);
                    var obj = JSON.parse(hidden);

                    $('#inCNIK').val(obj.nik);
                });

                function validateChangePwd() {
                    var $form = $('#formPwd');

                    if (!$form[0].checkValidity()) {
                        $('<input type="submit">').hide().appendTo($form).click().remove();
                        return false;
                    }

                    var $pwd1 = $('#inCPwd1');
                    var $pwd2 = $('#inCPwd2');

                    if ($pwd1.val() !== $pwd2.val()) {
                        bootbox.alert("<p class='text-danger'> Password does not match!</p>");
                        $pwd1.val('');
                        $pwd2.val('');
                        return false;
                    }

                    return true;
                }

                $('#btnChangePwd').on('click', function () {
                    if (validateChangePwd()) {

                        var inputData = {
                            nik: $('#inCNIK').val(),
                            pwd: $('#inCPwd1').val()
                        };

                        var dialog = bootbox.dialog({
                            message: '<p class="text-center"><i class="fa fa-spin fa-spinner"></i> Loading...</p>',
                            closeButton: false
                        });

                        $.ajax({
                            type: 'POST',
                            timeout: 60000,
                            url: "control/changePwd.jsp",
                            data: inputData,
                            dataType: 'json',
                            success: function (data, textStatus, jqXHR) {
                                bootbox.alert(data.msg);
                                if (data.isValid) {
                                    $('#modalPwd').modal('hide');
                                    $('#formPwd')[0].reset();
                                }
                            },
                            error: function (jqXHR, textStatus, errorThrown) {
                                bootbox.alert("Oops! Try again later...");
                                console.log(errorThrown);
                            },
                            complete: function (jqXHR, textStatus) {
                                dialog.modal('hide');
                            }
                        });

                    }
                });


                $('#divTable').on('click', '#btnDelete', function () {
                    var hidden = $(this).closest('td').find('#hiddenInput').text();
                    var obj = JSON.parse(hidden);

                    bootbox.confirm({
                        message: "Are you sure you want to delete user " + obj.nik + "-" + obj.name + "?",
                        buttons: {
                            confirm: {
                                label: 'Yes',
                                className: 'btn-success'
                            },
                            cancel: {
                                label: 'No',
                                className: 'btn-danger'
                            }
                        },
                        callback: function (result) {
                            if (result) {
                                var inputData = {
                                    nik: obj.nik
                                };

                                var dialog = bootbox.dialog({
                                    message: '<p class="text-center"><i class="fa fa-spin fa-spinner"></i> Loading...</p>',
                                    closeButton: false
                                });

                                $.ajax({
                                    type: 'POST',
                                    url: "control/deleteUser.jsp",
                                    timeout: 60000,
                                    data: inputData,
                                    dataType: 'json',
                                    success: function (data, textStatus, jqXHR) {
                                        bootbox.alert(data.msg);
                                        if (data.isValid) {
                                            loadTableUser();
                                        }
                                    },
                                    error: function (jqXHR, textStatus, errorThrown) {
                                        bootbox.alert("Oops! Try again later...");
                                        console.log(errorThrown);
                                    },
                                    complete: function (jqXHR, textStatus) {
                                        dialog.modal('hide');
                                    }
                                });

                            }
                        }
                    });

                });

            });// end function ready
        </script>

    </body>

</html>


