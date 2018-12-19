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
                            <h1 class="page-header">Urus Node</h1>                        
                        </div>
                        <h4 class="pull-right">
                            <button id="btnAddNodeModal" class="btn btn-success"><i class="fa fa-plus-circle"></i> Tambah Node</button>
                        </h4>
                        <div style="clear: both;"></div>
                        <!-- /.col-lg-12 -->
                        <div class="col-lg-12 grupKontenNode text-center">
                            <div class="col-md-4">
                                <p>
                                    <button class="btn btn-sm btn-danger"><i class="fa fa-trash fa-fw"></i></button>
                                </p>
                                <h2 class="text-center">
                                    <a style="display: block; cursor: pointer" class="kontenNode">
                                        <i class="fa fa-building fa-4x fa-fw"></i>
                                        <p>Tasikmalaya</p>
                                    </a>
                                </h2>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                    <div class="row" id="contentCME" style="display: none;">
                        <div class="col-lg-12">
                            <h1 class="page-header"> Urus CME <b id="contentCMENode"></b></h1>
                        </div>
                        <h4 class="pull-left">
                            <button id="btnUrusCMEBack" class="btn btn-default"><i class="fa fa-arrow-left"></i> Kembali</button>
                        </h4>

                        <div style="clear: both;"></div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading">Deisel</div>
                                    <div class="panel-body">
                                        <p>Merk/Tipe: <b id="deiMerk">-</b></p>
                                        <p>Kap (KVA): <b id="deiKap">-</b></p>
                                         <p class="pull-right">
                                             <button title="Edit data deisel" class="btn btn-default" id="btnDeiEditModal"><i class="fa fa-edit"></i></button>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading">PLN (KVA)</div>
                                    <div class="panel-body">
                                        <p>Kap: <b id="plnKap">-</b></p>
                                        <p>Terpakai: <b id="plnTerpakai">-</b></p>
                                        <p class="pull-right">
                                            <button title="Edit data PLN" class="btn btn-default" id="btnPLNEditModal"><i class="fa fa-edit"></i></button>
                                        </p>
                                        
                                    </div>
                                </div>
                            </div>                            
                        </div>
                        <!--./row-->

                        <div class="row">
                            <div class="panel panel-success">
                                <div class="panel-heading">Rectifier</div>
                                <div class="panel-body">
                                    <p class="pull-right">
                                        <button id="btnAddRectifierModal" title="Tambah rectifier" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button>
                                    </p>
                                    <div class="table-responsive">
                                        <table id="tableRectifier" class="table table-light table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Type</th>
                                                    <th>Kap</th>
                                                    <th>Terpakai</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>
                                                        <button title="Edit data" class="btn btn-default"><i class="fa fa-edit"></i></button> 
                                                        <button title="Hapus data" class="btn btn-danger"><i class="fa fa-trash"></i></button> 
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!--/.row-->
                        
                        <div class="row">
                            <div class="panel panel-warning">
                                <div class="panel-heading">Battery</div>
                                <div class="panel-body">
                                    <p class="pull-right">
                                        <button id="btnAddBatteryModal" title="Tambah battery" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button>
                                    </p>
                                    <div class="table-responsive">
                                        <table id="tableBattery" class="table table-light table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Type</th>
                                                    <th>Bank</th>
                                                    <th>Kap (AMPER HOUR)</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>
                                                        <button title="Edit data" class="btn btn-default"><i class="fa fa-edit"></i></button> 
                                                        <button title="Hapus data" class="btn btn-danger"><i class="fa fa-trash"></i></button> 
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!--/.row-->
                        
                        <div class="row">
                            <div class="panel panel-primary">
                                <div class="panel-heading">Air Conditioner</div>
                                <div class="panel-body">
                                    <p class="pull-right">
                                        <button id="btnAddAircondModal" title="Tambah AC" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button>
                                    </p>
                                    <div class="table-responsive">
                                        <table id="tableAircond" class="table table-light table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Type</th>
                                                    <th>Kap (PK)</th>
                                                    <th>Jumlah</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>
                                                        <button title="Edit data" class="btn btn-default"><i class="fa fa-edit"></i></button> 
                                                        <button title="Hapus data" class="btn btn-danger"><i class="fa fa-trash"></i></button> 
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!--/.row-->
                        
                        <div class="row">
                            <div class="col-md-12">
                                <div class="text-justify" style="border: #007bff; border-style: outset; border-width: 5px; border-radius: 3px; padding:5px; margin-bottom: 10px;">
                                    <p><u>Keterangan:</u></p>
                                    <p id="isiKeterangan"></p>
                                    <p class="text-right">
                                        <button id="btnEditKeteranganModal" title="Edit keterangan" class="btn btn-default"><i class="fa fa-edit"></i></button>
                                    </p>
                                    
                                </div>
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
        
        <!-- Modal -->
        <div class="modal fade" id="modalDeisel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Edit Deisel</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formDeisel">
                            <fieldset>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Merk/Tipe</label>  
                                    <div class="col-md-6">
                                        <input id="inDeiMerk" name="textinput" type="text"  class="form-control input-md" required="" maxlength="200" >

                                    </div>
                                </div>
                                
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Kapasitas (KVA)</label>  
                                    <div class="col-md-6">
                                        <input id="inDeiKap" name="textinput" type="number"  class="form-control input-md" required="" max="9999.99" min="0" step="0.01" >

                                    </div>
                                </div>

                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnEditDei" type="button" class="btn btn-success">Simpan</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        
         <!-- Modal -->
        <div class="modal fade" id="modalPLN" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Edit PLN</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formPLN">
                            <fieldset>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Kapasitas (KVA)</label>  
                                    <div class="col-md-6">
                                        <input id="inPLNKap" name="textinput" type="number"  class="form-control input-md" required="" max="9999.99" min="0" step="0.01" >

                                    </div>
                                </div>
                                
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Terpakai (KVA)</label>  
                                    <div class="col-md-6">
                                        <input id="inPLNTer" name="textinput" type="number"  class="form-control input-md" required="" max="9999.99" min="0" step="0.01" >

                                    </div>
                                </div>

                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnEditPLN" type="button" class="btn btn-success">Simpan</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        
          <!-- Modal -->
        <div class="modal fade" id="modalKet" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Edit Keterangan</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formKet">
                            <fieldset>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Keterangan</label>  
                                    <div class="col-md-6">
                                        <textarea id="inKet" name="textinput" type="text"  class="form-control input-md" required="" maxlength="500" ></textarea>

                                    </div>
                                </div>
                                
                                
                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnEditKet" type="button" class="btn btn-success">Simpan</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        
          <!-- Modal -->
        <div class="modal fade" id="modalRectifier" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Rectifier</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formRectier">
                            <fieldset>
                                <input type="hidden" id="idRectifier">
                                
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Type</label>  
                                    <div class="col-md-6">
                                        <input id="inRecType" name="textinput" type="text"  class="form-control input-md" required="" maxlength="200" >

                                    </div>
                                </div>
                                
                                 <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Kapasitas (Amper)</label>  
                                    <div class="col-md-6">
                                        <input id="inRecKap" name="textinput" type="number"  class="form-control input-md" required="" max="9999.99" min="0" step="0.01" >

                                    </div>
                                </div>
                                 
                                 <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Terpakai (Amper)</label>  
                                    <div class="col-md-6">
                                        <input id="inRecTer" name="textinput" type="number"  class="form-control input-md" required="" max="9999.99" min="0" step="0.01" >

                                    </div>
                                </div>
                                
                                
                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnAddRec" type="button" class="btn btn-success">Tambah</button>
                        <button id="btnEditRec" type="button" class="btn btn-success">Edit</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        
         <div class="modal fade" id="modalBattery" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Battery</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formBattery">
                            <fieldset>
                                <input type="hidden" id="idBattery">
                                
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Type</label>  
                                    <div class="col-md-6">
                                        <input id="inBatType" name="textinput" type="text"  class="form-control input-md" required="" maxlength="200" >

                                    </div>
                                </div>
                                
                                 <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Bank</label>  
                                    <div class="col-md-6">
                                        <input id="inBatBank" name="textinput" type="number"  class="form-control input-md" required="" max="9999" min="0" step="1" >

                                    </div>
                                </div>
                                 
                                 <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Kapasitas (Amper Hour)</label>  
                                    <div class="col-md-6">
                                        <input id="inBatKap" name="textinput" type="number"  class="form-control input-md" required="" max="99999.99" min="0" step="0.01" >

                                    </div>
                                </div>
                                
                                
                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnAddBat" type="button" class="btn btn-success">Tambah</button>
                        <button id="btnEditBat" type="button" class="btn btn-success">Edit</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        
         <div class="modal fade" id="modalAircond" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Air Conditioner</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formAircond">
                            <fieldset>
                                <input type="hidden" id="idAircond">
                                
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Type</label>  
                                    <div class="col-md-6">
                                        <input id="inACType" name="textinput" type="text"  class="form-control input-md" required="" maxlength="200" >

                                    </div>
                                </div>
                                
                                 <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Kapasitas (PK)</label>  
                                    <div class="col-md-6">
                                        <input id="inACKap" name="textinput" type="number"  class="form-control input-md" required="" max="999.99" min="0" step="0.01" >

                                    </div>
                                </div>
                                 
                                 <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Jumlah</label>  
                                    <div class="col-md-6">
                                        <input id="inACJumlah" name="textinput" type="number"  class="form-control input-md" required="" max="9999" min="0" step="1" >

                                    </div>
                                </div>
                                
                                
                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnAddAC" type="button" class="btn btn-success">Tambah</button>
                        <button id="btnEditAC" type="button" class="btn btn-success">Edit</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <!--jquery here-->
        <jsp:include page="../share/javascript.jsp"/>

        <script src="js/urusNode.js"></script>
        <script src="js/urusCME.js"></script>
        <script src="js/urusRectifier.js"></script>
        <script src="js/urusBattery.js"></script>
        <script src="js/urusAircond.js"></script>

        <script>
            var globalDialog = createLoadingDialog(null);
            $(function () {
                loadNode(globalDialog);
                
                $('.modal').css('overflow', 'auto');

                $('.grupKontenNode').on('click', '.kontenNode', function () {
                    var name = $(this).find('p').text();
                    $('#contentNode').hide();
                    $('#contentCME').show();
                    $('#contentCMENode').text(name);
                    loadCMEUmum(name);
                    loadRectifier(name);
                    loadBattery(name);
                    loadAircond(name);

                });

                $('#btnUrusCMEBack').click(function () {
                    $('#contentCME').hide();
                    $('#contentNode').show();
                });

            });// end function ready
        </script>

    </body>

</html>

