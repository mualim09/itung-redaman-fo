/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function loadGround(node) {
    var inData = {node: node};
    $.ajax({
        type: 'POST',
        data: inData,
        timeout: 60000,
        url: "control/loadGround.jsp",
        success: function (data, textStatus, jqXHR) {
            $('#tableGround').find('tbody').html(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown);
        }
    });
}

$('#btnAddGroundModal').on('click', function () {
    var $modal = $('#modalGround');
    $modal.modal('show');
    $modal.find('.btn').hide();
    $('#btnAddGround').show();
    $('#formGround')[0].reset();
});

$('#btnAddGround').on('click', function () {
    var $form = $('#formGround');
    if (!$form[0].checkValidity()) {
        $('<input type="submit">').hide().appendTo($form).click().remove();
        return;
    }

    var inData = {
        ground: $('#inGroundName').val().replace(/'/g, "\\\'").replace(/"/g, "\\\""),
        tahan: $('#inGroundTahan').val(),
        beda: $('#inGroundBeda').val(),
        node: $('#contentCMENode').text()
    };
    var dialog = createLoadingDialog(null);
    $.ajax({
        type: 'POST',
        data: inData,
        url: "control/addGround.jsp",
        dataType: 'json',
        timeout: 60000,
        success: function (data, textStatus, jqXHR) {
            bootbox.alert(data.msg);
            if (data.isValid) {
                loadGround(inData.node);
                $('#modalGround').modal('hide');
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

$('#tableGround').on('click', '#btnEditModal', function () {
    var $modal = $('#modalGround');
    $modal.modal('show');
    $modal.find('.btn').hide();
    $('#btnEditGround').show();

    var json = JSON.parse($(this).closest('td').find('#hidden').text());
    $('#inGroundName').val(json.grounding);
    $('#inGroundTahan').val(json.tahanan);
    $('#inGroundBeda').val(json.beda);
    $('#idGround').val(json.id);
});

$('#btnEditGround').on('click', function () {
    var $form = $('#formGround');
    if (!$form[0].checkValidity()) {
        $('<input type="submit">').hide().appendTo($form).click().remove();
        return;
    }

    var inData = {
        ground: $('#inGroundName').val().replace(/'/g, "\\\'").replace(/"/g, "\\\""),
        tahan: $('#inGroundTahan').val(),
        beda: $('#inGroundBeda').val(),
        node: $('#contentCMENode').text(),
        id: $('#idGround').val()
    };
    var dialog = createLoadingDialog(null);
    $.ajax({
        type: 'POST',
        data: inData,
        url: "control/editGround.jsp",
        dataType: 'json',
        timeout: 60000,
        success: function (data, textStatus, jqXHR) {
            bootbox.alert(data.msg);
            if (data.isValid) {
                loadGround(inData.node);
                $('#modalGround').modal('hide');
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

$('#tableGround').on('click', '#btnDelete', function () {

    var json = JSON.parse($(this).closest('td').find('#hidden').text());
    bootbox.confirm({
        message: "Anda yakin ingin menghapus grounding " + json.grounding + "?",
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
                url: "control/deleteGround.jsp",
                dataType: 'json',
                timeout: 60000,
                success: function (data, textStatus, jqXHR) {
                    bootbox.alert(data.msg);
                    if (data.isValid) {
                        loadGround(json.node);
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


