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
              url:"api/inspecciones",                  
              success: lista,      
              error: function(jqXHR){ alert(errorMessage(jqXHR.status));}
            });      
    
}

function lista(inspecciones){
    var listado=$("#listadoIns");
    listado.html("");
    inspecciones.forEach((f)=>{
      fila(listado,f);
    });
}
 
 function fila(listado,inspeccion_ocular){
        var tr =$("<tr />");
        tr.html(
            "<td>"+inspeccion_ocular.id+"</td>"
            +"<td>"+inspeccion_ocular.usuario.nombre+"</td>"
            +"<td>"+inspeccion_ocular.fecha+"</td>"
            +"<td><img src='images/hidrante.png' width='30' height='30' onclick='mostrarModal(\""+inspeccion_ocular.id+"\")'></td>");
  
        listado.append(tr);
    }

function mostrarModal(id){
     $.ajax({type: "GET", 
              url:"api/hidrantesInspeccionados/"+id,                  
              success: mostrarHidrantes,           //podría ser reemplazado por promesas pero habría que hacer un propio ajax
              error: function(jqXHR){ alert(errorMessage(jqXHR.status));}
            });
}

function mostrarHidrantes(hidrantes){
    alert("hola");
    $('#modalHidrantes').modal('show');
    var listado=$("#listadoH");
    listado.html("");
    hidrantes.forEach((f)=>{
      fila(listado,f);
    });
}
// 
// function fila(listado,hidrante){
//        var tr =$("<tr />");
//        tr.html(
//            "<td>"+hidrante.id+"</td>"   
//            +"<td>"+hidrante.estado+"</td>" 
//            +"<td>"+hidrante.longitud+"</td>"
//            +"<td>"+hidrante.latitud+"</td>");
//  
//        listado.append(tr);
//    }




document.addEventListener("DOMContentLoaded",pageLoad);