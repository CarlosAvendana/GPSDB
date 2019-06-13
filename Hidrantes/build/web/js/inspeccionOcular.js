/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function pageLoad(){
    $(cargarBomberos);
    $(cargarHidrantes);
}
function cargarBomberos(){
    $.ajax({type: "GET", 
              url:"api/bomberos",
              contentType: "application/json",
              success: listarBomberos,      
              error: function(jqXHR){ alert(errorMessage(jqXHR.status));}
            });  
    
    
}
function cargarHidrantes(){
    $.ajax({type: "GET", 
              url:"api/hidrantes",
              contentType: "application/json",
              success: listarHidrantes,      
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

function listarHidrantes(hidrantes){
    var select = $("#hidrantes");
    hidrantes.forEach((e)=>{
        var op = $("<option />");
        op.attr("value",e.id);
        op.text(e.id);
        select.append(op);
    });
    
}

function guardarHidranteInspeccionado(){
     var e = document.getElementById("hidrantes");
    var criterio = e.options[e.selectedIndex].value;
     var e2 = document.getElementById("estado");
    var criterio2 = e2.options[e2.selectedIndex].value;
    var hidrante = {
                id: criterio,
                caudal: 0,
                numero_salidas: 0,
                tamano_salidas: "",
                estado: criterio2,
                longitud: 0,
                latitud: 0
            };
     $.ajax({type: "POST", 
                  url:"api/hidrantesInspeccionados", 
                  data: JSON.stringify(hidrante),
                  contentType: "application/json",
                  success: lista,
                  error: function(jqXHR){ alert(errorMessage(jqXHR.status));}               
                });
}

function lista(inspecciones){
    var listado=$("#listado");
    listado.html("");
    inspecciones.forEach((f)=>{
      fila(listado,f.hidrante);
    });
}
 
 function fila(listado,hidrante){
        var tr =$("<tr />");
        tr.html(
            "<td>"+hidrante.id+"</td>"            
            +"<td>"+hidrante.estado+"</td>");
  
        listado.append(tr);
    }

function guardarInspeccion(){
    
    var e = document.getElementById("bomberos");
    var criterio = e.options[e.selectedIndex].value;
    var bombero = {
        id: criterio,
        nombre: "",
        contrasena: "",
        departamento:""
    }
    var inspeccion_ocular = {
                id: $("input#id").val(),
                usuario: bombero,
                fecha: $("input#dia").val()+"-"+$("input#mes").val()+"-"+$("input#anio").val()
                
            };
            $.ajax({type: "PUT", 
                  url:"api/hidrantesInspeccionados/add", 
                  data: JSON.stringify(inspeccion_ocular),
                  contentType: "application/json",
                  success: window.location.replace("http://localhost:8080/Hidrantes/hidrantesBomberos.jsp"),
                  error: function(jqXHR){ alert(errorMessage(jqXHR.status));}               
                });
    
}

document.addEventListener("DOMContentLoaded",pageLoad);