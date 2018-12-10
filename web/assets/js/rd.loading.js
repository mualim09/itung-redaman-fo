/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function createLoading() {
    $("#forLoading").append('<div class="container"> <div class="row"> <div id="loader" class="overlay"> <div class="dot"></div><div class="dot"></div><div class="dot"></div><div class="dot"></div><div class="dot"></div><div class="dot"></div><div class="dot"></div><div class="dot"></div><div class="lading"></div></div></div></div>');
}

function destroyLoading() {
    $("#forLoading").html("");
}

function createLoadingDialog(mesej) {
    if(mesej == null)
        mesej = 'Mohon bersabar. Permintaan anda sedang kami proses.';
    return bootbox.dialog({
        title: mesej,
        message: '<p><i class="fa fa-spin fa-spinner"></i> Loading...</p>'
    });
}

function createErrorAlert(mesej, err){
    if(mesej == null)
        mesej = "Oops! Silahkan coba lagi nanti...";
    bootbox.alert("<b class='text-warning'><i class='fa fa-exclamation-triangle' aria-hidden='true'></i> "+mesej+"</b>");
    console.log(err);
}