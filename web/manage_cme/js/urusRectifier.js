/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function loadRectifier(node) {
    var inData = {node: node};
    $.ajax({
        type: 'POST',
        data: inData,
        timeout: 60000,
        url: "control/loadCMERectifier.jsp",
        success: function (data, textStatus, jqXHR) {
            $('#tableRectifier').find('tbody').html(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown);
        }
    });
}

$('#btnAddRectifierModal').on('click', function () {
    var $modal = $('#modalRectifier');
    $modal.modal('show');
    $modal.find('.btn').hide();
    $('#btnAddRec').show();
    $('#formRectier')[0].reset();
});

$('#btnAddRec').on('click', function () {
    var $form = $('#formRectier');
    if (!$form[0].checkValidity()) {
        $('<input type="submit">').hide().appendTo($form).click().remove();
        return;
    }

    var inData = {
        type: $('#inRecType').val().replace(/'/g, "\\\'").replace(/"/g, "\\\""),
        kap: $('#inRecKap').val(),
        ter: $('#inRecTer').val(),
        node: $('#contentCMENode').text()
    };
    var dialog = createLoadingDialog(null);
    $.ajax({
        type: 'POST',
        data: inData,
        url: "control/addRectifier.jsp",
        dataType: 'json',
        timeout: 60000,
        success: function (data, textStatus, jqXHR) {
            bootbox.alert(data.msg);
            if (data.isValid) {
                loadRectifier(inData.node);
                $('#modalRectifier').modal('hide');
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

$('#tableRectifier').on('click', '#btnEditModal', function () {
    var $modal = $('#modalRectifier');
    $modal.modal('show');
    $modal.find('.btn').hide();
    $('#btnEditRec').show();

    var json = JSON.parse($(this).closest('td').find('#hidden').text());
    $('#inRecKap').val(json.kap);
    $('#inRecTer').val(json.ter);
    $('#inRecType').val(json.type);
    $('#idRectifier').val(json.id);
});

$('#btnEditRec').on('click', function(){
    var $form = $('#formRectier');
    if (!$form[0].checkValidity()) {
        $('<input type="submit">').hide().appendTo($form).click().remove();
        return;
    }

    var inData = {
        type: $('#inRecType').val().replace(/'/g, "\\\'").replace(/"/g, "\\\""),
        kap: $('#inRecKap').val(),
        ter: $('#inRecTer').val(),
        node: $('#contentCMENode').text(),
        id: $('#idRectifier').val()
    };
    var dialog = createLoadingDialog(null);
    $.ajax({
        type: 'POST',
        data: inData,
        url: "control/editRectifier.jsp",
        dataType: 'json',
        timeout: 60000,
        success: function (data, textStatus, jqXHR) {
            bootbox.alert(data.msg);
            if (data.isValid) {
                loadRectifier(inData.node);
                $('#modalRectifier').modal('hide');
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

$('#tableRectifier').on('click', '#btnDelete', function () {

    var json = JSON.parse($(this).closest('td').find('#hidden').text());
    bootbox.confirm({
        message: "Anda yakin ingin menghapus rectifier " + json.type + "?",
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
            if (!result)
                return;

            var dialog = createLoadingDialog(null);
            json.node = $('#contentCMENode').text();
            $.ajax({
                type: 'POST',
                data: json,
                url: "control/deleteRectifier.jsp",
                dataType: 'json',
                timeout: 60000,
                success: function (data, textStatus, jqXHR) {
                    bootbox.alert(data.msg);
                    if (data.isValid) {
                        loadRectifier(json.node);
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
    });
});