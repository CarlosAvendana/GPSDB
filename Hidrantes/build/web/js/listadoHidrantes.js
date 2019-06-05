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
              url:"api/hidrantes",                  
              success: lista,           //podría ser reemplazado por promesas pero habría que hacer un propio ajax
              error: function(jqXHR){ alert(errorMessage(jqXHR.status));}
            });                   
    }

function lista(hidrantes){
    var listado=$("#listado");
    listado.html("");
    hidrantes.forEach((c)=>{
      fila(listado,c);
    });
}
 
function fila(listado,hidrante){
        var tr =$("<tr />");
        tr.html(
            "<td>"+hidrante.id+"</td>"            
            +"<td>"+hidrante.nombre+"</td>");
        listado.append(tr);
    }
    
 document.addEventListener("DOMContentLoaded",pageLoad);