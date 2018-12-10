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
        <link rel="stylesheet" href="../assets/css/datepicker.min.css"/>
        <style>
            .ganti{
                cursor: pointer;
            }
            .ganti:hover { 
                background-color: yellow;
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
                                        <option value="-" selected>Pilih tanggal laporan</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="pull-right">
                                <button id="btnAddBulanModal" class="btn btn-success"><i class="fa fa-plus-circle"></i> Tambah Laporan </button>
                            </div>
                        </div>


                    </div>
                    <hr>
                    <div class="row">
                        <div class="pull-right">
                            <button id="btnHapusLaporan" class="btn btn-danger"><i class="fa fa-minus-circle"></i> Hapus Laporan</button>
                        </div>
                    </div>

                    <div class="row">

                        <div class="text-center">
                            <h4><b>Witel: Tasikmalaya</b></h4>
                            <h4><b>Bulan: <span id="judulTanggal">?</span></b></h4>
                        </div>
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <input type="hidden" id="hidNode">
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
        <div class="modal fade" id="modalCreateMonth" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Laporan untuk bulan apa?</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formBulan">
                            <fieldset>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Bulan</label>  
                                    <div class="col-md-6">
                                        <input id="inBulan" name="textinput" type="text" placeholder="Pilih bulan laporan" class="form-control input-md" required="" maxlength="6" readonly="">

                                    </div>
                                </div>

                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnAddBulan" type="button" class="btn btn-primary forUpdate">Bikin Laporan</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <!-- Modal -->
        <div class="modal fade" id="modalJJDBulIni" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Jam Jalan Deg Bulan Ini</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formJJDBulIni">
                            <fieldset>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Node</label>  
                                    <div class="col-md-6">
                                        <input name="textinput" type="text" class="form-control input-md leNode" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai lama</label>  
                                    <div class="col-md-6">
                                        <input id="JJDBulIniLama" name="textinput" type="text" class="form-control input-md" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai baru</label>  
                                    <div class="col-md-6">
                                        <input id="JJDBulIniBaru" name="textinput" type="number" placeholder="Nilai terkini" class="form-control input-md" required="" max="99999.99" min="0" step="0.01">

                                    </div>
                                </div>

                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnUpdateJJDBulIni" type="button" class="btn btn-primary forUpdate">Simpan</button>
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
                        <h4 class="modal-title">Keterangan</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formKet">
                            <fieldset>
                                 <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Node</label>  
                                    <div class="col-md-6">
                                        <input name="textinput" type="text" class="form-control input-md leNode" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Keterangan</label>  
                                    <div class="col-md-6">
                                        <textarea id="inKet" name="textinput"  placeholder="Keterangan (300 karakter)" class="form-control input-md" maxlength="300"></textarea>

                                    </div>
                                </div>

                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnUpdateKet" type="button" class="btn btn-primary forUpdate">Simpan</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        
         <!-- Modal -->
        <div class="modal fade" id="modalKapDeg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Kapasitas Deg (KVA)</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formKapDeg">
                            <fieldset>
                                 <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Node</label>  
                                    <div class="col-md-6">
                                        <input name="textinput" type="text" class="form-control input-md leNode" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai lama</label>  
                                    <div class="col-md-6">
                                        <input id="KapDegLama" name="textinput" type="text" class="form-control input-md" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai baru</label>  
                                    <div class="col-md-6">
                                        <input id="KapDegBaru" name="textinput" type="number" placeholder="Nilai terkini" class="form-control input-md" required="" max="999.99" min="0" step="0.01">

                                    </div>
                                </div>

                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnUpdateKapDeg" type="button" class="btn btn-primary forUpdate">Simpan</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        
         <!-- Modal -->
        <div class="modal fade" id="modalKapTang" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Kapasitas Tangki (Liter)</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formKapTang">
                            <fieldset>
                                 <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Node</label>  
                                    <div class="col-md-6">
                                        <input name="textinput" type="text" class="form-control input-md leNode" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai lama</label>  
                                    <div class="col-md-6">
                                        <input id="KapTangLama" name="textinput" type="text" class="form-control input-md" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai baru</label>  
                                    <div class="col-md-6">
                                        <input id="KapTangBaru" name="textinput" type="number" placeholder="Nilai terkini" class="form-control input-md" required="" max="9999.99" min="0" step="0.01">

                                    </div>
                                </div>

                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnUpdateKapTang" type="button" class="btn btn-primary forUpdate">Simpan</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        
          <!-- Modal -->
        <div class="modal fade" id="modalBulanLaluSolar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Sisa Solar Bulan Lalu (Liter)</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formBulanLaluSolar">
                            <fieldset>
                                 <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Node</label>  
                                    <div class="col-md-6">
                                        <input name="textinput" type="text" class="form-control input-md leNode" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai lama</label>  
                                    <div class="col-md-6">
                                        <input id="BulanLaluSolarLama" name="textinput" type="text" class="form-control input-md" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai baru</label>  
                                    <div class="col-md-6">
                                        <input id="BulanLaluSolarBaru" name="textinput" type="number" placeholder="Nilai terkini" class="form-control input-md" required="" max="999.99" min="0" step="0.01">

                                    </div>
                                </div>

                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnUpdateBulanLaluSolar" type="button" class="btn btn-primary forUpdate">Simpan</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        
          <!-- Modal -->
        <div class="modal fade" id="modalBulanLaluOli" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Sisa Oli Bulan Lalu (Liter)</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formBulanLaluOli">
                            <fieldset>
                                 <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Node</label>  
                                    <div class="col-md-6">
                                        <input name="textinput" type="text" class="form-control input-md leNode" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai lama</label>  
                                    <div class="col-md-6">
                                        <input id="BulanLaluOliLama" name="textinput" type="text" class="form-control input-md" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai baru</label>  
                                    <div class="col-md-6">
                                        <input id="BulanLaluOliBaru" name="textinput" type="number" placeholder="Nilai terkini" class="form-control input-md" required="" max="999.99" min="0" step="0.01">

                                    </div>
                                </div>

                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnUpdateBulanLaluOli" type="button" class="btn btn-primary forUpdate">Simpan</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        
          <!-- Modal -->
        <div class="modal fade" id="modalJamJalanDegBulanLalu" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Jam Jalan Deg Bulan Lalu</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formJamJalanDegBulanLalu">
                            <fieldset>
                                 <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Node</label>  
                                    <div class="col-md-6">
                                        <input name="textinput" type="text" class="form-control input-md leNode" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai lama</label>  
                                    <div class="col-md-6">
                                        <input id="JamJalanDegBulanLaluLama" name="textinput" type="text" class="form-control input-md" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai baru</label>  
                                    <div class="col-md-6">
                                        <input id="JamJalanDegBulanLaluBaru" name="textinput" type="number" placeholder="Nilai terkini" class="form-control input-md" required="" max="99999.99" min="0" step="0.01">

                                    </div>
                                </div>

                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnUpdateJamJalanDegBulanLalu" type="button" class="btn btn-primary forUpdate">Simpan</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        
           <!-- Modal -->
        <div class="modal fade" id="modalJMLJamJalan" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Jumlah Jam Jalan Node</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formJMLJamJalan">
                            <fieldset>
                                 <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Node</label>  
                                    <div class="col-md-6">
                                        <input name="textinput" type="text" class="form-control input-md leNode" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai lama</label>  
                                    <div class="col-md-6">
                                        <input id="JMLJamJalanLama" name="textinput" type="text" class="form-control input-md" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai baru</label>  
                                    <div class="col-md-6">
                                        <input id="JMLJamJalanBaru" name="textinput" type="number" placeholder="Nilai terkini" class="form-control input-md" required="" max="999.99" min="0" step="0.01">

                                    </div>
                                </div>

                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnUpdateJMLJamJalan" type="button" class="btn btn-primary forUpdate">Simpan</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        
            <!-- Modal -->
        <div class="modal fade" id="modalPakaiSolar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Pemakaian Solar (Liter)</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formPakaiSolar">
                            <fieldset>
                                 <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Node</label>  
                                    <div class="col-md-6">
                                        <input name="textinput" type="text" class="form-control input-md leNode" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai lama</label>  
                                    <div class="col-md-6">
                                        <input id="pakaiSolarLama" name="textinput" type="text" class="form-control input-md" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai baru</label>  
                                    <div class="col-md-6">
                                        <input id="pakaiSolarBaru" name="textinput" type="number" placeholder="Nilai terkini" class="form-control input-md" required="" max="999.99" min="0" step="0.01">

                                    </div>
                                </div>

                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnUpdatePakaiSolar" type="button" class="btn btn-primary forUpdate">Simpan</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

              <!-- Modal -->
        <div class="modal fade" id="modalPakaiOli" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Pemakaian Oli (Liter)</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formPakaiOli">
                            <fieldset>
                                 <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Node</label>  
                                    <div class="col-md-6">
                                        <input name="textinput" type="text" class="form-control input-md leNode" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai lama</label>  
                                    <div class="col-md-6">
                                        <input id="pakaiOliLama" name="textinput" type="text" class="form-control input-md" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai baru</label>  
                                    <div class="col-md-6">
                                        <input id="pakaiOliBaru" name="textinput" type="number" placeholder="Nilai terkini" class="form-control input-md" required="" max="999.99" min="0" step="0.01">

                                    </div>
                                </div>

                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnUpdatePakaiOli" type="button" class="btn btn-primary forUpdate">Simpan</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        
               <!-- Modal -->
        <div class="modal fade" id="modalTambahSolar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Penambahan Solar (Liter)</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="formTambahSolar">
                            <fieldset>
                                 <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Node</label>  
                                    <div class="col-md-6">
                                        <input name="textinput" type="text" class="form-control input-md leNode" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai lama</label>  
                                    <div class="col-md-6">
                                        <input id="tambahSolarLama" name="textinput" type="text" class="form-control input-md" required=""  readonly="">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nilai baru</label>  
                                    <div class="col-md-6">
                                        <input id="tambahSolarBaru" name="textinput" type="number" placeholder="Nilai terkini" class="form-control input-md" required="" max="999.99" min="0" step="0.01">

                                    </div>
                                </div>

                            </fieldset>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button id="btnUpdateTambahSolar" type="button" class="btn btn-primary forUpdate">Simpan</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <!-- jQuery -->
        <jsp:include page="../share/javascript.jsp"/>

        <script src="../assets/js/datepicker.min.js"></script>
        <script src="../assets/js/datepicker.ina.js"></script>
        <script src="../assets/js/RequestAnimationFrame.js"></script>
        <script src="../assets/js/TouchScroll.js"></script>

        <script>
            $(function () {

                var viewer = new TouchScroll();
                viewer.init({
                    id: 'divTable',
                    draggable: true,
                    wait: false
                });

                function loadTanggal(bulan_tahun) {

                    $.ajax({
                        type: 'GET',
                        url: "control/date_list.jsp",
                        timeout: 60000,
                        dataType: 'json',
                        success: function (data, textStatus, jqXHR) {
                            if (!data.isValid) {
                                bootbox.alert(data.msg);
                                $('#selectMonth').html('<option value="-" selected>Pilih tanggal laporan</option>');
                                $('#judulTanggal').text('-');
                                return;
                            }

                            var arrData = data.tanggal;
                            var strHTML = '';
                            for (i in arrData) {
                                strHTML += '<option value="' + arrData[i].value + '">' + arrData[i].name + '</option>';
                            }
                            $('#selectMonth').html(strHTML);

                            if (bulan_tahun != null) {
                                $('#selectMonth').val(bulan_tahun);
                            }

                            $('#judulTanggal').text($('#selectMonth').find('option:selected').text());
                        },
                        error: function (jqXHR, textStatus, errorThrown) {

                        },
                        complete: function (jqXHR, textStatus) {

                        }
                    });
                }

                loadTanggal(null);

                loadTable("-", null);

                $('#selectMonth').on('change', function () {
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
                    $('#divTable').load('control/table.jsp', {'tanggal': tanggal}, function () {
                        if (dialog != null) {
                            dialog.modal('hide');
                        }
                    });
                }

                //init month picker
                $('#inBulan').datepicker({
                    autoClose: true,
                    // days, months or years
                    view: 'months',
                    minView: 'months',
                    // language
                    language: 'ina',
                    inline: true,
                    dateFormat: 'MM yyyy'

                });

                $('#btnHapusLaporan').on('click', function () {
                    var selectedMonth = $('#selectMonth').val();
                    if (selectedMonth === "-" || selectedMonth == null) {
                        bootbox.alert("Tiada laporan untuk dihapus.");
                        return;
                    }

                    bootbox.confirm({
                        message: "Adakah anda pasti ingin menghapus laporan bulan " + selectedMonth + "?",
                        buttons: {
                            confirm: {
                                label: 'Ya',
                                className: 'btn-success'
                            },
                            cancel: {
                                label: 'Tidak',
                                className: 'btn-danger'
                            }
                        },
                        callback: function (result) {
                            if (result) {
                                var dialog = createLoadingDialog(null);
                                var inputData = {
                                    tanggal: selectedMonth
                                };

                                $.ajax({
                                    type: 'POST',
                                    timeout: 60000,
                                    data: inputData,
                                    url: "control/deleteReport.jsp",
                                    dataType: 'json',
                                    success: function (data, textStatus, jqXHR) {
                                        bootbox.alert(data.msg);
                                        if (data.isValid) {
                                            loadTable("-", null);
                                            loadTanggal(null);
                                        }
                                    },
                                    error: function (jqXHR, textStatus, errorThrown) {
                                        createErrorAlert(null, errorThrown);
                                    },
                                    complete: function (jqXHR, textStatus) {
                                        dialog.modal('hide');
                                    }
                                });
                            }
                        }
                    });

                });

                $('#btnAddBulanModal').on('click', function () {
                    $('#modalCreateMonth').modal('show');
                    $('#formBulan')[0].reset();
                });

                $('#btnAddBulan').on('click', function () {
                    var tanggal = $('#inBulan').val();
                    if (tanggal == null || tanggal === "") {
                        bootbox.alert("Silahkan pilih bulan laporan yang ingin dibuat!");
                        return;
                    }
                    console.log(tanggal);
                    var inputData = {
                        tanggal: tanggal
                    };
                    var dialog = createLoadingDialog(null);
                    $.ajax({
                        type: 'POST',
                        timeout: 60000,
                        url: "control/createReport.jsp",
                        data: inputData,
                        dataType: 'json',
                        success: function (data, textStatus, jqXHR) {
                            bootbox.alert(data.msg);
                            $('#selectMonth').val(data.bulan_tahun);
                            loadTable(data.bulan_tahun, createLoadingDialog(null));
                            $('#judulTanggal').text(tanggal);

                            if (data.isValid) {
                                loadTanggal(data.bulan_tahun);
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            createErrorAlert(null, errorThrown);
                        },
                        complete: function (jqXHR, textStatus) {
                            dialog.modal('hide');
                            $('#modalCreateMonth').modal('hide');
                        }

                    });

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

                $('#divTable').on('click', '.ganti', function () {
                    var nilai = $(this).text();
                    var row = $(this).closest('tr');
                    var node = row.find('#tNode').text();
                    var id = $(this).attr('id');
                    console.log(nilai + " " + node + " " + id);
                    $('#hidNode').val(node);
                    $('.leNode').val(node);

                    if (id === "tJamJalanDegBulIni") {
                        $('#modalJJDBulIni').modal('show');
                        $('#JJDBulIniLama').val(nilai);
                        $('#JJDBulIniBaru').prop('min', nilai);
                        $('#JJDBulIniBaru').val("");
                        return;
                    }

                    if (id === "tKet") {
                        $('#inKet').val(nilai);
                        $('#modalKet').modal('show');
                        return;
                    }
                    
                    if(id === "tKapDeg"){
                        $('#KapDegBaru').val("");
                        $('#KapDegLama').val(nilai);
                        $('#modalKapDeg').modal('show');
                        return;
                    }
                    
                    if(id === "tKapTang"){
                        $('#KapTangBaru').val("");
                        $('#KapTangLama').val(nilai);
                        $('#modalKapTang').modal('show');
                        return;
                    }
                    
                    if(id=== "tBulanLaluSolar"){
                        $('#BulanLaluSolarBaru').val("");
                        $('#BulanLaluSolarLama').val(nilai);
                        $('#modalBulanLaluSolar').modal('show');
                        return;
                    }
                    
                    if(id==="tBulanLaluOli"){
                        $('#BulanLaluOliBaru').val("");
                        $('#BulanLaluOliLama').val(nilai);
                        $('#modalBulanLaluOli').modal('show');
                        return;
                    }
                    
                    if(id==="tJamJalanDegBulanLalu"){
                        $('#JamJalanDegBulanLaluBaru').val("");
                        $('#JamJalanDegBulanLaluLama').val(nilai);
                        $('#modalJamJalanDegBulanLalu').modal('show');
                        return;
                    }
                    
                    if(id==="tJMLJamJalan"){
                        $('#JMLJamJalanBaru').val("");
                        $('#JMLJamJalanLama').val(nilai);
                        $('#modalJMLJamJalan').modal('show');
                        return;
                    }
                    
                    if(id==="tPakaiSolar"){
                        $('#pakaiSolarBaru').val("");
                        $('#pakaiSolarLama').val(nilai);
                        $('#modalPakaiSolar').modal('show');
                        return;
                    }
                    
                    if(id==="tPakaiOli"){
                        $('#pakaiOliBaru').val("");
                        $('#pakaiOliLama').val(nilai);
                        $('#modalPakaiOli').modal('show');
                        return;
                    }
                    
                    if(id==="tTambahSolar"){
                        $('#tambahSolarBaru').val("");
                        $('#tambahSolarLama').val(nilai);
                        $('#modalTambahSolar').modal('show');
                        return;
                    }
                    
                });
                
                function forUpdateGeneric($form, $lama, $baru, $modal, url){
                   
                    if (!$form[0].checkValidity()) {
                        $('<input type="submit">').hide().appendTo($form).click().remove();
                        return false;
                    }
                    
                    var inData = {
                        lama: $lama.val(),
                        baru: $baru.val(),
                        node: $('#hidNode').val(),
                        tanggal: $('#selectMonth').val()
                    };

                    var dialog = createLoadingDialog(null);
                    console.log(inData);
                    $.ajax({
                        type: 'POST',
                        data: inData,
                        timeout: 60000,
                        url: "control/"+url,
                        dataType: 'json',
                        success: function (data, textStatus, jqXHR) {
                            bootbox.alert(data.msg);
                            if (data.isValid) {
                                loadTable(inData.tanggal, createLoadingDialog(null));
                                $modal.modal('hide');
                                $form[0].reset();
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            createErrorAlert(null, errorThrown);
                        },
                        complete: function (jqXHR, textStatus) {
                            dialog.modal('hide');
                        }
                    });
                }
                
                 $('#btnUpdateTambahSolar').on('click', function(){
                    forUpdateGeneric($('#formTambahSolar'), $('#tambahSolarLama'), $('#tambahSolarBaru'), $('#modalTambahSolar'), "updateTambahSolar.jsp");   
                });
                
                $('#btnUpdatePakaiOli').on('click', function(){
                    forUpdateGeneric($('#formPakaiOli'), $('#pakaiOliLama'), $('#pakaiOliBaru'), $('#modalPakaiOli'), "updatePakaiOli.jsp");   
                });
                
                $('#btnUpdatePakaiSolar').on('click', function(){
                    forUpdateGeneric($('#formPakaiSolar'), $('#pakaiSolarLama'), $('#pakaiSolarBaru'), $('#modalPakaiSolar'), "updatePakaiSolar.jsp");   
                });
                
                $('#btnUpdateJMLJamJalan').on('click', function(){
                    forUpdateGeneric($('#formJMLJamJalan'), $('#JMLJamJalanLama'), $('#JMLJamJalanBaru'), $('#modalJMLJamJalan'), "updateJMLJamJalan.jsp");   
                });
                
                $('#btnUpdateJamJalanDegBulanLalu').on('click', function(){
                    forUpdateGeneric($('#formJamJalanDegBulanLalu'), $('#JamJalanDegBulanLaluLama'), $('#JamJalanDegBulanLaluBaru'), $('#modalJamJalanDegBulanLalu'), "updateJamJalanDegBulanLalu.jsp");   
                });
                
                $('#btnUpdateBulanLaluOli').on('click', function(){
                     forUpdateGeneric($('#formBulanLaluOli'), $('#BulanLaluOliLama'), $('#BulanLaluOliBaru'), $('#modalBulanLaluOli'), "udapteBulanLaluOli.jsp");        
                });
                
                $('#btnUpdateBulanLaluSolar').on('click', function(){
                    forUpdateGeneric($('#formBulanLaluSolar'), $('#BulanLaluSolarLama'), $('#BulanLaluSolarBaru'), $('#modalBulanLaluSolar'), "udapteBulanLaluSolar.jsp");                    
                });
                
                $('#btnUpdateKapTang').on('click', function(){
                    var $form = $('#formKapTang');

                    if (!$form[0].checkValidity()) {
                        $('<input type="submit">').hide().appendTo($form).click().remove();
                        return false;
                    }
                    
                    var inData = {
                        lama: $('#KapTangLama').val(),
                        baru: $('#KapTangBaru').val(),
                        node: $('#hidNode').val(),
                        tanggal: $('#selectMonth').val()
                    };

                    var dialog = createLoadingDialog(null);
                    console.log(inData);
                    $.ajax({
                        type: 'POST',
                        data: inData,
                        timeout: 60000,
                        url: "control/updateKapTang.jsp",
                        dataType: 'json',
                        success: function (data, textStatus, jqXHR) {
                            bootbox.alert(data.msg);
                            if (data.isValid) {
                                loadTable(inData.tanggal, createLoadingDialog(null));
                                $('#modalKapTang').modal('hide');
                                $form[0].reset();
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            createErrorAlert(null, errorThrown);
                        },
                        complete: function (jqXHR, textStatus) {
                            dialog.modal('hide');
                        }
                    });
                });
                
                $('#btnUpdateKapDeg').on('click', function(){
                     var $form = $('#formKapDeg');

                    if (!$form[0].checkValidity()) {
                        $('<input type="submit">').hide().appendTo($form).click().remove();
                        return false;
                    }
                    
                    var inData = {
                        lama: $('#KapDegLama').val(),
                        baru: $('#KapDegBaru').val(),
                        node: $('#hidNode').val(),
                        tanggal: $('#selectMonth').val()
                    };

                    var dialog = createLoadingDialog(null);
                    console.log(inData);
                    $.ajax({
                        type: 'POST',
                        data: inData,
                        timeout: 60000,
                        url: "control/updateKapDeg.jsp",
                        dataType: 'json',
                        success: function (data, textStatus, jqXHR) {
                            bootbox.alert(data.msg);
                            if (data.isValid) {
                                loadTable(inData.tanggal, createLoadingDialog(null));
                                $('#modalKapDeg').modal('hide');
                                $form[0].reset();
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            createErrorAlert(null, errorThrown);
                        },
                        complete: function (jqXHR, textStatus) {
                            dialog.modal('hide');
                        }
                    });
                    
                });

                $('#btnUpdateKet').on('click', function () {
                    var inData = {
                        baru: $('#inKet').val().replace(/'/g, "\\\'").replace(/"/g, "\\\""),
                        node: $('#hidNode').val(),
                        tanggal: $('#selectMonth').val()
                    };

                    var dialog = createLoadingDialog(null);
                    console.log(inData);
                    $.ajax({
                        type: 'POST',
                        data: inData,
                        timeout: 60000,
                        url: "control/updateKet.jsp",
                        dataType: 'json',
                        success: function (data, textStatus, jqXHR) {
                            bootbox.alert(data.msg);
                            if (data.isValid) {
                                loadTable(inData.tanggal, createLoadingDialog(null));
                                $('#modalKet').modal('hide');
                                $form[0].reset();
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            createErrorAlert(null, errorThrown);
                        },
                        complete: function (jqXHR, textStatus) {
                            dialog.modal('hide');
                        }
                    });
                });

                $('#btnUpdateJJDBulIni').on('click', function () {
                    var $form = $('#formJJDBulIni');

                    if (!$form[0].checkValidity()) {
                        $('<input type="submit">').hide().appendTo($form).click().remove();
                        return false;
                    }

                    var inData = {
                        lama: $('#JJDBulIniLama').val(),
                        baru: $('#JJDBulIniBaru').val(),
                        node: $('#hidNode').val(),
                        tanggal: $('#selectMonth').val()
                    };

                    var dialog = createLoadingDialog(null);
                    console.log(inData);
                    $.ajax({
                        type: 'POST',
                        data: inData,
                        timeout: 60000,
                        url: "control/updateJJDBulIni.jsp",
                        dataType: 'json',
                        success: function (data, textStatus, jqXHR) {
                            bootbox.alert(data.msg);
                            if (data.isValid) {
                                loadTable(inData.tanggal, createLoadingDialog(null));
                                $('#modalJJDBulIni').modal('hide');
                            }
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


