/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function loadCMEUmum(node){
    var inData = {node:node};
    $.ajax({
        type: 'POST',
        dataType: 'json',
        data: inData,
        timeout: 60000,
        url: "control/loadCMEUmum.jsp",
        success: function (data, textStatus, jqXHR) {
            console.log(data);
            if(!data.isValid)
                return false;
            
            $('#deiMerk').text(data.deiMerk);
            $('#deiKap').text(data.deiKap);
            
            $('#plnKap').text(data.plnKap);
            $('#plnTerpakai').text(data.plnTerpakai);
            
            $('#isiKeterangan').text(data.ket);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown);
        }
    });
}

$('#btnDeiEditModal').on('click', function () {
    $('#modalDeisel').modal('show');
    $('#inDeiKap').val($('#deiKap').text());
    $('#inDeiMerk').val($('#deiMerk').text());
});

$('#btnEditDei').on('click', function () {
    var $form = $('#formDeisel');
    if (!$form[0].checkValidity()) {
        $('<input type="submit">').hide().appendTo($form).click().remove();
        return;
    }

    var inData = {
        merk: $('#inDeiMerk').val().replace(/'/g, "\\\'").replace(/"/g, "\\\""),
        kap: $('#inDeiKap').val(),
        node : $('#contentCMENode').text()
    };

    var dialog = createLoadingDialog(null);
    $.ajax({
        type: 'POST',
        timeout: 60000,
        data: inData,
        dataType: 'json',
        url: "control/editDeisel.jsp",
        success: function (data, textStatus, jqXHR) {
            bootbox.alert(data.msg);
            if (data.isValid) {
                loadCMEUmum(inData.node);
                $('#modalDeisel').modal('hide');
            }
        },
        complete: function (jqXHR, textStatus) {
            dialog.modal('hide');
        },
        error: function (jqXHR, textStatus, errorThrown) {
            createErrorAlert(null, errorThrown);
        }
    });

});

$('#btnPLNEditModal').on('click', function () {
    $('#modalPLN').modal('show');
    $('#inPLNKap').val($('#plnKap').text());
    $('#inPLNTer').val($('#plnTerpakai').text());
});

$('#btnEditPLN').on('click', function () {
    var $form = $('#formPLN');
    if (!$form[0].checkValidity()) {
        $('<input type="submit">').hide().appendTo($form).click().remove();
        return;
    }

    var inData = {
        ter: $('#inPLNTer').val(),
        kap: $('#inPLNKap').val(),
        node : $('#contentCMENode').text()
    };

    var dialog = createLoadingDialog(null);
    $.ajax({
        type: 'POST',
        timeout: 60000,
        data: inData,
        dataType: 'json',
        url: "control/editPLN.jsp",
        success: function (data, textStatus, jqXHR) {
            bootbox.alert(data.msg);
            if (data.isValid) {
                loadCMEUmum(inData.node);
                $('#modalPLN').modal('hide');
            }
        },
        complete: function (jqXHR, textStatus) {
            dialog.modal('hide');
        },
        error: function (jqXHR, textStatus, errorThrown) {
            createErrorAlert(null, errorThrown);
        }
    });

});

$('#btnEditKeteranganModal').on('click', function(){
    $('#modalKet').modal('show');
    $('#inKet').val($('#isiKeterangan').text());
});

$('#btnEditKet').on('click', function () {
    var $form = $('#formKet');
    if (!$form[0].checkValidity()) {
        $('<input type="submit">').hide().appendTo($form).click().remove();
        return;
    }

    var inData = {
        ket: $('#inKet').val().replace(/'/g, "\\\'").replace(/"/g, "\\\""),
        node : $('#contentCMENode').text()
    };

    var dialog = createLoadingDialog(null);
    $.ajax({
        type: 'POST',
        timeout: 60000,
        data: inData,
        dataType: 'json',
        url: "control/editKeterangan.jsp",
        success: function (data, textStatus, jqXHR) {
            bootbox.alert(data.msg);
            if (data.isValid) {
                loadCMEUmum(inData.node);
                $('#modalKet').modal('hide');
            }
        },
        complete: function (jqXHR, textStatus) {
            dialog.modal('hide');
        },
        error: function (jqXHR, textStatus, errorThrown) {
            createErrorAlert(null, errorThrown);
        }
    });

});
