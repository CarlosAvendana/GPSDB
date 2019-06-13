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
        <script src="js/inspeccionOcular.js" type="text/javascript"></script>
        <title>Inspeccion Ocular</title>
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Bomberos</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
        <li class="nav-item active">
        <a class="nav-link" href="#">Hidrantes<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="InspeccionOcular.jsp">Inspeccion Ocular <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="Bomberos.jsp">Bomberos<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="rph.jsp">Radio Positivo de Hidrantes<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="index.jsp">Cerrar Sesión</a>
      </li>
    </ul>
  </div>
</nav>
        <h1>Inspección Ocular</h1>
        
        <div class="container">
  <div class="row">
    <div class="col-sm">
      
    </div>
    <div class="col-sm-11">
        <form>
  
      <div class="form-group">
    <label for="id">Id</label>
    <input type="text" class="form-control" id="id" placeholder="Id de inspección...">
  </div>
  
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
  <div class="form-group">
      <label for="bombero">Bombero</label>
      <select class="form-control" id="bomberos"></select>
    </div>       
  
  
  <button type="button" onclick="guardarInspeccion()" class="btn btn-primary">Guardar</button>
</form>
    </div>
    <div class="col-sm">
      
    </div>
  </div>
</div>
      
        
    </body>
</html>
