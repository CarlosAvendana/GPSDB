/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function guardarHidrante(){
    alert("Hola")
    var hidrante = {
                codigo: $("#cod").val(),
                caudal: $("#cau").val(),
                numero_salidas: $("#num").val(),
                tamano_salidas: $("#tam").val(),
                estado: "Excelente",
                latitud: $("#lat").val(),
                longitud: $("#lon").val()
            };
            $.ajax({type: "PUT", 
                  url:"api/hidrantes/add", 
                  data: JSON.stringify(hidrante),
                  contentType: "application/json",
                  success: ()=>{$('#hidranteRegistrado').modal('show');},
                  error: function(jqXHR){ alert(errorMessage(jqXHR.status));}               
                });
    
    }

