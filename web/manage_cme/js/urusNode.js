/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function loadNode(dialog) {
    $.ajax({
        timeout: 60000,
        type: 'GET',
        dataType: 'json',
        url: "control/loadNode.jsp",
        success: function (data, textStatus, jqXHR) {
            if (!data.isValid) {
                $('.grupKontenNode').html('<div class="text-centre"><h3 class="text-warning">Belum ada node terdaftar</h3></div>');
                return;
            }

            var arr = data.arr;
            var html = '';
            for (i in arr) {
                html += '<div class="col-md-4"><p> <button id="btnDeleteNode" title="Hapus node ' + arr[i] + '" class="btn btn-sm btn-danger"><i class="fa fa-trash fa-fw"></i></button> </p><h2 class="text-center"> <a class="kontenNode" style="display: block; cursor: pointer"> <i class="fa fa-building fa-4x"></i> <p id="theNode">' + arr[i] + '</p> </a> </h2> </div>';
            }
            $('.grupKontenNode').html(html);

        },
        complete: function (jqXHR, textStatus) {
            if (dialog != null) {
                dialog.modal('hide');
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            createErrorAlert(null, errorThrown);
        }
    });

}

$('#btnAddNodeModal').click(function () {
    $('#modalNode').modal('show');
});

$('#btnAddNode').click(function () {
    var $form = $('#formNode');
    if (!$form[0].checkValidity()) {
        $('<input type="submit">').hide().appendTo($form).click().remove();
        return;
    }

    var name = $('#inNode').val();
    name = name.replace(/'/g, "\\\'").replace(/"/g, "\\\"");

    var inData = {name: name};
    var dialog = createLoadingDialog(null);
    $.ajax({
        type: 'POST',
        data: inData,
        timeout: 60000,
        dataType: 'json',
        url: "control/addNode.jsp",
        success: function (data, textStatus, jqXHR) {
            bootbox.alert(data.msg);
            if (data.isValid) {
                $('#modalNode').modal('hide');
                loadNode(null);
                $('#formNode')[0].reset();
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

$('.grupKontenNode').on('click', '#btnDeleteNode', function () {
    var node = $(this).closest('div').find('#theNode').text();
    bootbox.confirm({
        message: "Anda pasti inging menghapus node " + node + "?",
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
                var inData = {node: node};
                var dialog = createLoadingDialog(null);
                $.ajax({
                    type: 'POST',
                    timeout: 60000,
                    data: inData,
                    dataType: 'json',
                    url: "control/deleteNode.jsp",
                    success: function (data, textStatus, jqXHR) {
                        bootbox.alert(data.msg);
                        if (data.isValid) {
                            loadNode(createLoadingDialog(null));

                        }
                    },
                    complete: function (jqXHR, textStatus) {
                        dialog.modal('hide');
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        createErrorAlert(null, errorThrown);
                    }
                });
            }
        }
    });
});

