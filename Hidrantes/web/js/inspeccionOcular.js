/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function pageLoad(){
    $(cargarBomberos);
    
}
function cargarBomberos(){
    $.ajax({type: "GET", 
              url:"api/bomberos",
              contentType: "application/json",
              success: listarBomberos,      
              error: function(jqXHR){ alert(errorMessage(jqXHR.status));}
            });  
    
    
}

function listarBomberos(usuarios){
    var select = $("#bomberos");
    usuarios.forEach((e)=>{
        var op = $("<option />");
        op.attr("value",e.id);
        op.text(e.id+" - "+e.nombre);
        select.append(op);
    });
    
}
document.addEventListener("DOMContentLoaded",pageLoad);