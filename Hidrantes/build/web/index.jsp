<%-- 
    Document   : index
    Created on : Jun 2, 2019, 4:00:39 PM
    Author     : paoma
--%>

<%@page import="data.Dao"%>
<%@page import="data.RealDataBase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="js/jquery.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hidrantes</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <% Dao rdb = new Dao(); %>
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

<h3>Mantenimiento de Hidrantes</h3>
<p>Instalacion y mantenimiento de hidrantes en el casco central de Alajuela.</p>
       
    </body>
</html>
