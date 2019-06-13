<%-- 
    Document   : FormularioInstalacion
    Created on : Jun 12, 2019, 3:41:00 PM
    Author     : paoma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario de instalacion</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/formularioInstalacion.js" type="text/javascript"></script>
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
        <a class="nav-link" href="#">Inspecciones<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">Funcionarios<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="index.jsp">Cerrar Sesión</a>
      </li>
    </ul>
  </div>
</nav>
        <h1>Formulario de Instalación</h1>
        
        <div class="container">
  <div class="row">
    <div class="col-sm">
      
    </div>
    <div class="col-sm-11">
        <form>
  
      <div class="form-group">
    <label for="id">Codigo</label>
    <input type="text" class="form-control" id="id" placeholder="Codigo de hidrante...">
  </div>
  
            <div class="form-row">
    <div class="form-group col-md-6">
      <label for="cantidad">Cantidad de salidas</label>
      <input type="text" class="form-control" id="cantidad" placeholder="Cantidad de salidas...">
    </div>
    <div class="form-group col-md-6">
      <label for="tamano">Tamaño de salidas</label>
      <select class="form-control" id="tamano">
          <option selected>Seleccione...</option>
          <option value="Grande">Grande</option>
          <option value="Mediano">Mediano</option>
          <option value="Pequeno">Pequeño</option>
      </select>
    </div>
  </div>
  <div class="form-group">
    <label for="caudal">Caudal</label>
    <input type="text" class="form-control" id="caudal" placeholder="Caudal...">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="longitud">Longitud</label>
      <input type="text" class="form-control" id="longitud" placeholder="Longitud...">
    </div>
    <div class="form-group col-md-6">
      <label for="latitud">Latitud</label>
      <input type="text" class="form-control" id="latitud" placeholder="Latitud...">
    </div>
  </div>
  
  <button type="button" onclick="guardarHidrante()" class="btn btn-primary">Guardar</button>
</form>
    </div>
    <div class="col-sm">
      
    </div>
  </div>
</div>
        
    </body>
</html>
