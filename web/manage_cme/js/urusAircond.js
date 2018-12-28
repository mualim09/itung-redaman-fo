/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function loadAircond(node) {
    var inData = {node: node};
    $.ajax({
        type: 'POST',
        data: inData,
        timeout: 60000,
        url: "control/loadAircond.jsp",
        success: function (data, textStatus, jqXHR) {
            $('#tableAircond').find('tbody').html(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown);
        }
    });
}

$('#btnAddAircondModal').on('click', function () {
    var $modal = $('#modalAircond');
    $modal.modal('show');
    $modal.find('.btn').hide();
    $('#btnAddAC').show();
    $('#formAircond')[0].reset();
});

$('#btnAddAC').on('click', function () {
    var $form = $('#formAircond');
    if (!$form[0].checkValidity()) {
        $('<input type="submit">').hide().appendTo($form).click().remove();
        return;
    }

    var inData = {
        type: $('#inACType').val().replace(/'/g, "\\\'").replace(/"/g, "\\\""),
        merk: $('#inACMerk').val().replace(/'/g, "\\\'").replace(/"/g, "\\\""),
        kap: $('#inACKap').val(),
        kon_freon: $('#inACFreon').val(),
        tegTo: $('#inACTegTo').val(),
        arusTo: $('#inACArusTo').val(),
        temp: $('#inACTemp').val(),
        klbm: $('#inACKlbm').val(),
        ket: $('#inACKet').val().replace(/'/g, "\\\'").replace(/"/g, "\\\""),
        node: $('#contentCMENode').text()
    };
    var dialog = createLoadingDialog(null);
    $.ajax({
        type: 'POST',
        data: inData,
        url: "control/addAircond.jsp",
        dataType: 'json',
        timeout: 60000,
        success: function (data, textStatus, jqXHR) {
            bootbox.alert(data.msg);
            if (data.isValid) {
                loadAircond(inData.node);
                $('#modalAircond').modal('hide');
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

$('#tableAircond').on('click', '#btnEditModal', function () {
    var $modal = $('#modalAircond');
    $modal.modal('show');
    $modal.find('.btn').hide();
    $('#btnEditAC').show();

    var json = JSON.parse($(this).closest('td').find('#hidden').text());
    $('#inACKap').val(json.kap);
    $('#inACType').val(json.type);
    $('#inACMerk').val(json.merk);
    $('#inACFreon').val(json.kon_freon);
    $('#inACTegTo').val(json.tegTo);
    $('#inACArusTo').val(json.arusTo);
    $('#inACTemp').val(json.temp);
    $('#inACKlbm').val(json.klbm);
    $('#inACKet').val(json.ket);
    $('#idAircond').val(json.id);
});

$('#btnEditAC').on('click', function () {
    var $form = $('#formAircond');
    if (!$form[0].checkValidity()) {
        $('<input type="submit">').hide().appendTo($form).click().remove();
        return;
    }

    var inData = {
        type: $('#inACType').val().replace(/'/g, "\\\'").replace(/"/g, "\\\""),
        merk: $('#inACMerk').val().replace(/'/g, "\\\'").replace(/"/g, "\\\""),
        kap: $('#inACKap').val(),
        kon_freon: $('#inACFreon').val(),
        tegTo: $('#inACTegTo').val(),
        arusTo: $('#inACArusTo').val(),
        temp: $('#inACTemp').val(),
        klbm: $('#inACKlbm').val(),
        ket: $('#inACKet').val().replace(/'/g, "\\\'").replace(/"/g, "\\\""),
        node: $('#contentCMENode').text(),
        id: $('#idAircond').val()
    };
    var dialog = createLoadingDialog(null);
    $.ajax({
        type: 'POST',
        data: inData,
        url: "control/editAircond.jsp",
        dataType: 'json',
        timeout: 60000,
        success: function (data, textStatus, jqXHR) {
            bootbox.alert(data.msg);
            if (data.isValid) {
                loadAircond(inData.node);
                $('#modalAircond').modal('hide');
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

$('#tableAircond').on('click', '#btnDelete', function () {

    var json = JSON.parse($(this).closest('td').find('#hidden').text());
    bootbox.confirm({
        message: "Anda yakin ingin menghapus AC " + json.type + "?",
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
                url: "control/deleteAircond.jsp",
                dataType: 'json',
                timeout: 60000,
                success: function (data, textStatus, jqXHR) {
                    bootbox.alert(data.msg);
                    if (data.isValid) {
                        loadAircond(json.node);
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
