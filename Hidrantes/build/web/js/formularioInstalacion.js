/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function guardarHidrante(){
    var e = document.getElementById("tamano");
    var criterio = e.options[e.selectedIndex].value;
    var hidrante = {
                id: $("input#id").val(),
                caudal: $("input#caudal").val(),
                numero_salidas: $("input#cantidad").val(),
                tamano_salidas: criterio,
                estado: "Excelente",
                longitud: $("input#longitud").val(),
                latitud: $("input#latitud").val()
            };
            alert(hidrante.tamano_salidas);
            $.ajax({type: "PUT", 
                  url:"api/hidrantes/add", 
                  data: JSON.stringify(hidrante),
                  contentType: "application/json",
                  success: window.location.replace("http://localhost:8080/Hidrantes/hidrantesMuni.jsp"),
                  error: function(jqXHR){ alert(errorMessage(jqXHR.status));}               
                });
    
}

