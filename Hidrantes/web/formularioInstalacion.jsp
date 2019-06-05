<%-- 
    Document   : formularioInstalacion
    Created on : Jun 4, 2019, 11:21:23 PM
    Author     : paoma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="js/jquery.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario de Instalacion</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <script src="js/hidrantes.js" type="text/javascript"></script>
    </head>
    <body>
        <ul>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Municicipalidad de Alajuela</a>
    <div class="dropdown-content">
     <a href="formularioInstalacion.jsp">Formulario de Instalación</a>
      <a href="formularioMantenimiento.jsp">Formulario de Mantenimiento</a>         
    </div>
  </li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Departamento de Bomberos</a>
    <div class="dropdown-content">
    <a href="listadoHidrantes.jsp">Listado de Hidrantes</a>
     <a href="rph.jsp">Radio Positivo de Hidrantes</a>
                <a href="inspeccionOcular.jsp">Inspeccion Ocular</a>
                
                <a href="bomberos.jsp">Bomberos</a>
    </div>
  </li>
</ul>
        <h1>Formulario de Instalacion de Hidrante</h1>
        <form id="formulario">
            <table>
                <tr>
                    <td>Codigo</td>
                    <td><input type="text" id="cod" placeholder="Codigo del hidrante..."></td>
                </tr>
                <tr>
                    <td>Caudal</td>
                    <td><input type="text" id="cau" placeholder="Caudal del hidrante..."></td>
                </tr>
                <tr>
                    <td>Salidas</td>
                </tr>
                 <tr>
                    <td>Numero de salidas</td>
                    <td><input type="text" id="num" placeholder="Numero de salidas del hidrante..."></td>
                </tr>
                <tr>
                    <td>Tamaño de salidas</td>
                    <td>
                        <select id="tam">
                            <option value="Grande">Grande</option>
                            <option value="Mediana">Mediana</option>
                            <option value="Pequena">Pequeña</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">Ubicacion</td>    
                </tr>
                <tr>
                    <td>Latitud</td>
                    <td><input type="text" id="lat" placeholder="Latitud:"></td>
                </tr>
                <tr>
                    <td>Longitud</td>
                    <td><input type="text" id="lon" placeholder="Longitd:"></td>
                </tr>
                <tr><td colspan="2"><button type="button" onclick="guardarHidrante()" id="submit">Registrar</button></td>

            </table>
        </form>
        <div class="modal" tabindex="-1" role="dialog" id="hidranteNoRegistrado">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Hidrante no registrado</h5>
                    <span aria-hidden="true">&times;</span>
  
                </div>
                <div class="modal-body">
                    
                    <img src="images/x.png" class="centeredImage" width="70" height="70">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="javascript:window.location.reload();">Aceptar</button>
                </div>
              </div>
            </div>
        </div>           
        
        
        <div class="modal" tabindex="-1" role="dialog" id="hidranteRegistrado">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Hidrante registrado</h5>
                    <span aria-hidden="true">&times;</span>

                </div>
                <div class="modal-body">
                    
                    <img src="images/checkVerde.png" class="centeredImage" width="70" height="70">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="javascript:window.location = 'index.jsp';">Entendido!</button>
                </div>
              </div>
            </div>
        </div>   
        
    </body>
</html>