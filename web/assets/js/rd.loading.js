/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function createLoading(){
    $("#forLoading").append('<div class="container"> <div class="row"> <div id="loader" class="overlay"> <div class="dot"></div><div class="dot"></div><div class="dot"></div><div class="dot"></div><div class="dot"></div><div class="dot"></div><div class="dot"></div><div class="dot"></div><div class="lading"></div></div></div></div>');
}

function destroyLoading(){
    $("#forLoading").html("");
}