/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function inicioSesion(){
    var usuario = {
                id: $('input#id').val(), 
                nombre: "",
                contrasena: $('input#contrasena').val(),
                departamento: ""
            };
    $.ajax({type: "POST", 
                  url:"api/usuarios", 
                  data: JSON.stringify(usuario),
                  contentType: "application/json",
                  success: redirige,
                  error: ()=>{ mostrarModalNoAsignados();}               
                });

}
function mostrarModalNoAsignados(){
    
    $("#falloLogin").modal("show");
    
}

function redirige(usuario){
if(usuario.departamento==="BOMBEROS")
        window.location.replace("http://localhost:8080/Hidrantes/hidrantesBomberos.jsp");
    if(usuario.departamento==="MUNICIPALIDAD")
        window.location.replace("http://localhost:8080/Hidrantes/hidrantesMuni.jsp");
    
}
