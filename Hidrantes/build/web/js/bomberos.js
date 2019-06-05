/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function pageLoad(){
    
    $(cargarLista);
    
    
}

function cargarLista(){

        $.ajax({type: "GET", 
              url:"api/bomberos",                  
              success: lista,           //podría ser reemplazado por promesas pero habría que hacer un propio ajax
              error: function(jqXHR){ alert(errorMessage(jqXHR.status));}
            });                   
    }

function lista(bomberos){
    var listado=$("#listado");
    listado.html("");
    bomberos.forEach((c)=>{
        
      fila(listado,c);
    });
}
 
function fila(listado,bombero){
        var tr =$("<tr />");
        tr.html(
            "<td>"+bombero.id+"</td>"            
            +"<td>"+bombero.nombre+"</td>"
            +"<td id='td"+bombero.id+"' onclick='mostrarModal(\""+bombero.id+"\")' onmouseenter='imgEditarIn(\""+bombero.id+"\")' onmouseleave='imgEditarOut(\""+bombero.id+"\")'></td>");
  
        listado.append(tr);
    }    

function imgEditarIn(id){
        var td = $("#td"+id);
        td.html("<span id='removableImg'><img src='images/edit.png' width='30' height='30'></span>");       
    }
    
function imgEditarOut(id){
        var span = $("#removableImg");
        span.remove();
    }



function mostrarModal(id){
    cargarBombero(id);
    $('#modalBombero').modal('show');
    
}

function cargarBombero(id_bombero){
    $.ajax({type: "GET", 
              url:"api/bomberos/"+id_bombero,                  
              success: mostrarBombero,           //podría ser reemplazado por promesas pero habría que hacer un propio ajax
              error: function(jqXHR){ alert(errorMessage(jqXHR.status));}
            });       
}

function mostrarBombero(bombero){
    
    var inpId = $("<input />");
    inpId.text(bombero.id); 
    inpId.val(bombero.id); 
    inpId.attr("readOnly",true);
    inpId.attr("id","id_bombero");
    
    var inpDes = $("<input />");
    inpDes.text(bombero.id); 
    inpDes.val(bombero.nombre);
    inpDes.attr("id","nombre");
    
    var div = $("#divMostrarBombero");
    var span = $("<span />");
    span.attr("id","spanModal");
    span.append(inpId);
    span.append($("<br>"));
    span.append(inpDes);
    div.append(span);
    
}


function limpiarModal(){
    $("#spanModal").remove();
}

function guardarCambios(){
    var bombero = {
                id: $("#id_bombero").val(),
                nombre: $("#nombre").val()
            };
            $.ajax({type: "PUT", 
                  url:"api/bomberos", 
                  data: JSON.stringify(bombero),
                  contentType: "application/json",
                  success: ()=> {limpiarModal();cargarLista();$('#modalBombero').modal('hide');},
                  error: function(jqXHR){ alert(errorMessage(jqXHR.status));}               
                });      
    
}


//AGREGAR CATEGORIA
function mostrarAddModal(){
    $('#modalAddBombero').modal('show');
}

function guardarBombero(){
    var bombero = {
                id: $("#id_bombero").val(),
                nombre: $("#nombre").val()
            };
            $.ajax({type: "PUT", 
                  url:"api/bomberos/add", 
                  data: JSON.stringify(bombero),
                  contentType: "application/json",
                  success: ()=> {limpiarAddModal();cargarLista();$('#modalAddBombero').modal('hide');},
                  error: function(jqXHR){ alert(errorMessage(jqXHR.status));}               
                });
    
}
function limpiarAddModal(){
    $("#id_bombero").val("");
    $("#nombre").val("");
}

//////////////////


document.addEventListener("DOMContentLoaded",pageLoad);
