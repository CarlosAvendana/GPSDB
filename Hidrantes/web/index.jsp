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
     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1964.4949555498656!2d-84.2137725443628!3d10.017690648885814!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8fa0f9c871fbddb3%3A0xb1f90fbc26bf36cb!2sProvincia+de+Alajuela%2C+Alajuela!5e0!3m2!1ses!2scr!4v1559773194015!5m2!1ses!2scr" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></body>
</html>
