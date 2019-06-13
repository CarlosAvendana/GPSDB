/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function pageLoad(){
    $(cargarHidrantes);
}

function cargarHidrantes(){
    $.ajax({type: "GET", 
              url:"api/hidrantes",
              contentType: "application/json",
              success: listarHidrantes,      
              error: function(jqXHR){ alert(errorMessage(jqXHR.status));}
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


function guardarInspeccion(){
    var e2 = document.getElementById("hidrantes");
    var criterio2 = e2.options[e2.selectedIndex].value;
    var e = document.getElementById("estado");
    var criterio = e.options[e.selectedIndex].value;
    alert("hola");
    
     var hidrantes = {
                id: criterio2,
                caudal: 0,
                numero_salidas: 0,
                tamano_salidas: "N",
                estado: criterio,
                longitud: 0,
                latitud: 0
            };     

     var formulario = {
        tipo: "MANTENIMIENTO",
        fecha: $("input#dia").val()+"-"+$("input#mes").val()+"-"+$("input#anio").val(),
        hidrante: hidrantes
    };
            $.ajax({type: "PUT", 
                  url:"api/inspecciones/mante", 
                  data: JSON.stringify(formulario),
                  contentType: "application/json",
                  success: window.location.replace("http://localhost:8080/Hidrantes/hidrantesMuni.jsp"),
                  error: function(jqXHR){ alert(errorMessage(jqXHR.status));}               
                });
    
}

document.addEventListener("DOMContentLoaded",pageLoad);