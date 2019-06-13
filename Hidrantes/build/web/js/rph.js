/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function buscar(){
    
   var RPH = {
                lon: $("#longitud").val(),
                lat: $("#latitud").val(),
                ra: $("#radio").val()
            };
            $.ajax({type: "POST", 
                  url:"api/hidrantes", 
                  data: JSON.stringify(RPH),
                  contentType: "application/json",
                  success: lista,
                  error: function(jqXHR){ alert(errorMessage(jqXHR.status));}               
                });
   
}
function lista(hidrantes){
    alert("hola");
    var listado=$("#listado");
    listado.html("");
    hidrantes.forEach((f)=>{
      fila(listado,f);
    });
}
 
 function fila(listado,hidrante){
        var tr =$("<tr />");
        tr.html(
            "<td>"+hidrante.id+"</td>"            
            +"<td>"+hidrante.caudal+"</td>"
            +"<td>"+hidrante.numero_salidas+"</td>"
            +"<td>"+hidrante.tamano_salidas+"</td>"
            +"<td>"+hidrante.estado+"</td>"
            +"<td>"+hidrante.longitud+"</td>"
            +"<td>"+hidrante.latitud+"</td>");
  
        listado.append(tr);
    }
