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
              url:"api/usuarios",                  
              success: lista,      
              error: function(jqXHR){ alert(errorMessage(jqXHR.status));}
            });      
    
}

function lista(usuarios){
    var listado=$("#listado");
    listado.html("");
    usuarios.forEach((f)=>{
      fila(listado,f);
    });
}
 
 function fila(listado,usuario){
        var tr =$("<tr />");
        tr.html(
            "<td>"+usuario.id+"</td>"            
            +"<td>"+usuario.nombre+"</td>"
            +"<td><img src='images/borrar.png' width='30' height='30' onclick='eliminarFuncionario(\""+usuario.id+"\")'></td>");
  
        listado.append(tr);
    }

function mostrarModal(id){
    cargarBombero(id);
    $('#modalUsuario').modal('show');
    
}

function cargarUsuario(id_usuario){
    $.ajax({type: "GET", 
              url:"api/usuarios/"+id_usuario,                  
              success: mostrarUsuario,           //podría ser reemplazado por promesas pero habría que hacer un propio ajax
              error: function(jqXHR){ alert(errorMessage(jqXHR.status));}
            });       
}

function mostrarUsuario(usuario){
    var inpId = $("<input />");
    inpId.text(usuario.id); 
    inpId.val(usuario.id); 
    inpId.attr("readOnly",true);
    inpId.attr("id","id_usuario");
    
    var inpNom = $("<input />");
    inpNom.text(usuario.id); 
    inpNom.val(usuario.nombre);
    inpNom.attr("id","nombre");
    
    var inpNom = $("<input />");
    inpCon.text(usuario.id); 
    inpCon.val(usuario.contrasena);
    inpCon.attr("id","contrasena");
    
    var div = $("#divMostrarUsuario");
    var span = $("<span />");
    span.attr("id","spanModal");
    span.append(inpId);
    span.append($("<br>"));
    span.append(inpNom);
    span.append($("<br>"));
    span.append(inpCon);
    div.append(span);
    
}


function limpiarModal(){
    $("#spanModal").remove();
}

function guardarCambios(){
    var usuario = {
                id: $("#id_usuario").val(),
                nombre: $("#nombre").val(),
                contrasena: $("#contrasena").val(),
                departamento: $("#departamento").val()
            };
            $.ajax({type: "PUT", 
                  url:"api/usuarios", 
                  data: JSON.stringify(usuario),
                  contentType: "application/json",
                  success: ()=> {limpiarModal();cargarLista();$('#modalUsuario').modal('hide');},
                  error: function(jqXHR){ alert(errorMessage(jqXHR.status));}               
                });      
    
}


//AGREGAR CATEGORIA
function mostrarAddModal(){
    $('#modalAddUsuario').modal('show');
}

function guardarUsuario(){
    var usuario = {
                id: $("#idBom").val(),
                nombre: $("#nomBom").val(),
                contrasena: $("#conBom").val(),
                departamento: "BOMBEROS"
            };
            $.ajax({type: "PUT", 
                  url:"api/usuarios/add", 
                  data: JSON.stringify(usuario),
                  contentType: "application/json",
                  success: ()=> {limpiarAddModal();cargarLista();$('#modalAddUsuario').modal('hide');},
                  error: function(jqXHR){ alert(errorMessage(jqXHR.status));}               
                });
    
}
function limpiarAddModal(){
    $("#idBom").val("");
    $("#nomBom").val("");
    $("#conBom").val("");
    $("#depBom").val("");
}

//////////////////

function eliminarFuncionario(id){
    $.ajax({type: "DELETE", 
                  url:"api/funcionarios/"+id,
                  contentType: "application/json",
                  success: ()=>{mostrarModalBorrado();},      
                  error: ()=>{ mostrarModalNoBorrado();}               
                });   
}

function mostrarModalNoBorrado(){
    $("#noBorrado").modal("show"); 
}
function mostrarModalBorrado(){
    $("#borrado").modal("show");
}

document.addEventListener("DOMContentLoaded",pageLoad);