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
      <a href="#">Formulario de Instalación</a>
                <a href="#">Formulario de Mantenimiento</a>
                <a href="#">Formulario de Trabajo</a>
    </div>
  </li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Departamento de Bomberos</a>
    <div class="dropdown-content">
     <a href="#">Listado de Hidrantes</a>
                <a href="#">Inspeccion Ocular</a>
                <a href="#">Bomberos</a>
    </div>
  </li>
</ul>

<h3>Dropdown Menu inside a Navigation Bar</h3>
<p>Hover over the "Dropdown" link to see the dropdown menu.</p>
       
    </body>
</html>
