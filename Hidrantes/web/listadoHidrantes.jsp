<%-- 
    Document   : listadoHidrantes
    Created on : Jun 4, 2019, 11:27:57 PM
    Author     : paoma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="js/jquery.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Hidrantes</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <script src="js/listaoHidrantes.js" type="text/javascript"></script>
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
        <h1>Listado de Hidrantes</h1>
        <table>
            <tr>
                <th>Codigo</th>
                <th>Caudal</th>
                <th>Estado</th>
                <th>Numero de Salidas</th>
                <th>Tamaño de Salidas</th>
                <th>Latitud</th>
                <th>Longitud</th>
            </tr>
            <tbody id="listado">
                
            </tbody>
        </table>
        
    </body>
</html>
