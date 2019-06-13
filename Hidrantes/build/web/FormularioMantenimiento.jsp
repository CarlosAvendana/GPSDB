<%-- 
    Document   : InspeccionOcular
    Created on : Jun 12, 2019, 5:28:45 PM
    Author     : paoma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/formularioMantenimiento.js" type="text/javascript"></script>
        <title>Formulario Mantenimiento</title>
    </head>
    <body>
                <nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Mantenimiento de Hidrantes</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="hidrantesMuni.jsp">Hidrantes<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="FormularioInstalacion.jsp">Formulario de Instalación<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">Formulario de Mantenimiento<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="Inspecciones.jsp">Inspecciones<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="Funcionarios.jsp">Funcionarios<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="index.jsp">Cerrar Sesión</a>
      </li>
    </ul>
  </div>
</nav>
        
        
        <div class="container">
  <div class="row">
    <div class="col-sm">
      
    </div>
    <div class="col-sm-11">
        <h1>Formulario de Mantenimiento</h1>
        <form>
 
  
     <div class="form-row">
    <div class="form-group col-md-4">
      <label for="dia">Día</label>
      <input type="text" class="form-control" id="dia" placeholder="Día...">
    </div>
     <div class="form-group col-md-4">
      <label for="mes">Mes</label>
      <input type="text" class="form-control" id="mes" placeholder="Mes...">
    </div>
         <div class="form-group col-md-4">
      <label for="anio">Año</label>
      <input type="text" class="form-control" id="anio" placeholder="Año...">
    </div>
  </div>
          
            <h3>Hidrante inspeccionado</h3>
            <div class="form-row">
    <div class="form-group col-md-6">
      <label for="hidrantes">Hidrante</label>
      <select class="form-control" id="hidrantes"></select>
    </div>     
      <div class="form-group col-md-6">
      <label for="estado">Estado</label>
      <select class="form-control" id="estado">
          <option selected>Seleccione...</option>
          <option value="Excelente">Excelente</option>
          <option value="Regular">Regular</option>
          <option value="Deficiente">Deficiente</option>
      </select>
    </div>
            </div>
                
            
            <div>
  <button type="button" onclick="guardarInspeccion()" class="btn btn-primary">Guardar</button>
    </div>
    <div class="col-sm">
      
    </div>
  </div>
        </div>
        
      
        </div>
    </body>
</html>
