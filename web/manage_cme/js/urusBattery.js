/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function loadBattery(node){
    var inData = {node:node};
    $.ajax({
        type: 'POST',
        data: inData,
        timeout: 60000,
        url: "control/loadBattery.jsp",
        success: function (data, textStatus, jqXHR) {
            $('#tableBattery').find('tbody').html(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown);
        }
    });
}

$('#btnAddBatteryModal').on('click', function () {
    var $modal = $('#modalBattery');
    $modal.modal('show');
    $modal.find('.btn').hide();
    $('#btnAddBat').show();
    $('#formBattery')[0].reset();
});

$('#btnAddBat').on('click', function () {
    var $form = $('#formBattery');
    if (!$form[0].checkValidity()) {
        $('<input type="submit">').hide().appendTo($form).click().remove();
        return;
    }

    var inData = {
        type: $('#inBatType').val().replace(/'/g, "\\\'").replace(/"/g, "\\\""),
        bank: $('#inBatBank').val(),
        kap: $('#inBatKap').val(),
        node: $('#contentCMENode').text()
    };
    var dialog = createLoadingDialog(null);
    $.ajax({
        type: 'POST',
        data: inData,
        url: "control/addBattery.jsp",
        dataType: 'json',
        timeout: 60000,
        success: function (data, textStatus, jqXHR) {
            bootbox.alert(data.msg);
            if (data.isValid) {
                loadBattery(inData.node);
                $('#modalBattery').modal('hide');
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

$('#tableBattery').on('click', '#btnEditModal', function () {
    var $modal = $('#modalBattery');
    $modal.modal('show');
    $modal.find('.btn').hide();
    $('#btnEditBat').show();

    var json = JSON.parse($(this).closest('td').find('#hidden').text());
    $('#inBatKap').val(json.kap);
    $('#inBatBank').val(json.bank);
    $('#inBatType').val(json.type);
    $('#idBattery').val(json.id);
});

$('#btnEditBat').on('click', function(){
    var $form = $('#formBattery');
    if (!$form[0].checkValidity()) {
        $('<input type="submit">').hide().appendTo($form).click().remove();
        return;
    }

    var inData = {
        type: $('#inBatType').val().replace(/'/g, "\\\'").replace(/"/g, "\\\""),
        kap: $('#inBatKap').val(),
        bank: $('#inBatBank').val(),
        node: $('#contentCMENode').text(),
        id: $('#idBattery').val()
    };
    var dialog = createLoadingDialog(null);
    $.ajax({
        type: 'POST',
        data: inData,
        url: "control/editBattery.jsp",
        dataType: 'json',
        timeout: 60000,
        success: function (data, textStatus, jqXHR) {
            bootbox.alert(data.msg);
            if (data.isValid) {
                loadBattery(inData.node);
                $('#modalBattery').modal('hide');
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

$('#tableBattery').on('click', '#btnDelete', function () {

    var json = JSON.parse($(this).closest('td').find('#hidden').text());
    bootbox.confirm({
        message: "Anda yakin ingin menghapus battery " + json.type + "?",
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
                url: "control/deleteBattery.jsp",
                dataType: 'json',
                timeout: 60000,
                success: function (data, textStatus, jqXHR) {
                    bootbox.alert(data.msg);
                    if (data.isValid) {
                        loadBattery(json.node);
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
