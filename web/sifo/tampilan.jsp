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
                    <div class="row" id="contentNode">
                        <div class="col-lg-12">
                            <h1 class="page-header">Data Pengukuran Fiber Optic</h1>                        
                        </div>
                         <!-- /.col-lg-12 -->

                        <form class="form-horizontal">
                            <!-- Select Basic -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="selectbasic">Witel</label>
                                <div class="col-md-6">
                                    <p class="form-control">TASIKMALAYA</p>
                                </div>
                            </div>
                            <!--/.select basic-->

                            <!-- Select Basic -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="selectbasic">Pilih STO</label>
                                <div class="col-md-6">
                                    <select id="selectSTO" name="selectbasic" class="form-control">
                                        <option value="1">Option one</option>
                                        <option value="2">Option two</option>
                                    </select>
                                </div>
                            </div>
                            <!--/.select basic-->

                            <!-- Select Basic -->
                            <div class="form-group" style="display: none;">
                                <label class="col-md-4 control-label" for="selectbasic">Pilih Core</label>
                                <div class="col-md-6">
                                    <select id="selectCore" name="selectbasic" class="form-control">
                                        <option value="1">Option one</option>
                                        <option value="2">Option two</option>
                                    </select>
                                </div>
                            </div>
                            <!--/.select basic-->

                            <!-- Select Basic -->
                            <div class="form-group" style="display: none;">
                                <label class="col-md-4 control-label" for="selectbasic">Periode</label>
                                <div class="col-md-6">
                                    <select id="selectPeriode" name="selectbasic" class="form-control">
                                        <option value="1">Option one</option>
                                        <option value="2">Option two</option>
                                    </select>
                                </div>
                            </div>
                            <!--/.select basic-->
                        </form>                       

                    </div>
                    <hr>
                    <div class="row" id="isiData">
                        
                    </div>
                   
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->


        <!-- Modal -->
        <div class="modal fade" id="modalNode" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Tambah Node</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formNode">
                            <fieldset>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nama Node</label>  
                                    <div class="col-md-6">
                                        <input id="inNode" name="textinput" type="text" placeholder="Node baru" class="form-control input-md" required="" maxlength="200" >

                                    </div>
                                </div>

                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnAddNode" type="button" class="btn btn-success">Tambah</button>
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

                $('#selectSTO').on('change', function () {
                    $('#selectCore').closest('.form-group').show();
                    $('#selectPeriode').closest('.form-group').hide();
                    var lokasi = $(this).val();
                    loadCore(createLoadingDialog(null), lokasi);
                });

                function loadSTO(dialog) {
                    $.ajax({
                        type: 'GET',
                        url: "controlTampilan/loadSTO.jsp",
                        timeout: 60000,
                        dataType: 'json',
                        success: function (data, textStatus, jqXHR) {
                            var html = '<option value="-" disabled selected>Pilih STO</option>';
                            for(var i in data){
                                html+='<option value="'+data[i].lokasi+'">'+data[i].name+'</option>'
                            }
                            
                            $('#selectSTO').html(html);
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            createErrorAlert(null, errorThrown);
                        },
                        complete: function (jqXHR, textStatus) {
                            if(dialog != null){
                                dialog.modal('hide');
                            }
                        }
                    });
                }
                
                loadSTO(createLoadingDialog(null));

                $('#selectCore').on('change', function () {
                    $('#selectPeriode').closest('.form-group').show();
                    var core = $(this).val();
                    loadPeriode(createLoadingDialog(null), null, core);
                });
                
                function loadCore(dialog, lokasi){
                    var inData = {lokasi:lokasi};
                     $.ajax({
                        type: 'GET',
                        url: "controlTampilan/loadCore.jsp",
                        timeout: 60000,
                        data: inData,
                        dataType: 'json',
                        success: function (data, textStatus, jqXHR) {
                            if(data.length < 1){
                                bootbox.alert("Tiada core untuk STO yang dipilih. Pilih STO yang lain!");
                            }
                            var html = '<option value="-" disabled selected>Pilih Core</option>';
                            for(var i in data){
                                html+='<option value="'+data[i]+'">'+data[i]+'</option>'
                            }
                            
                            $('#selectCore').html(html);
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            createErrorAlert(null, errorThrown);
                        },
                        complete: function (jqXHR, textStatus) {
                            if(dialog != null){
                                dialog.modal('hide');
                            }
                        }
                    });
                }
                
                function loadPeriode(dialog, lokasi, core){
                    var inData = {
                        lokasi:lokasi,
                        core:core
                    };
                     $.ajax({
                        type: 'GET',
                        url: "controlTampilan/loadPeriode.jsp",
                        timeout: 60000,
                        data: inData,
                        dataType: 'json',
                        success: function (data, textStatus, jqXHR) {
                            if(data.length < 1){
                                bootbox.alert("Tiada periode untuk core yang dipilih. Pilih core yang lain!");
                            }
                            var html = '<option value="-" disabled selected>Pilih Periode</option>';
                            for(var i in data){
                                html+='<option value="'+data[i]+'">'+data[i]+'</option>'
                            }
                            
                            $('#selectPeriode').html(html);
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            createErrorAlert(null, errorThrown);
                        },
                        complete: function (jqXHR, textStatus) {
                            if(dialog != null){
                                dialog.modal('hide');
                            }
                        }
                    });
                }

                $('#selectPeriode').on('change', function () {
                    loadData(createLoadingDialog(null));
                });
                
                
                function loadData(dialog){
                    var lokasi = $('#selectSTO').val();
                    var core = $('#selectCore').val();
                    var periode = $('#selectPeriode').val();
                    
                    var inData = {
                        lokasi:lokasi,
                        core:core,
                        periode: periode
                    };
                     $.ajax({
                        type: 'GET',
                        url: "controlTampilan/loadData.jsp",
                        timeout: 60000,
                        data: inData,
                        success: function (data, textStatus, jqXHR) {
                            $('#isiData').html(data);
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            createErrorAlert(null, errorThrown);
                        },
                        complete: function (jqXHR, textStatus) {
                            if(dialog != null){
                                dialog.modal('hide');
                            }
                        }
                    });
                    
                }

            });// end function ready
        </script>

    </body>

</html>

