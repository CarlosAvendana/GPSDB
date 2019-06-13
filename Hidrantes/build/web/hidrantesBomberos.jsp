<%-- 
    Document   : hidrantesBomberos
    Created on : Jun 12, 2019, 5:31:12 PM
    Author     : paoma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/hidrantes.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Hidrantes</title>
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
 
        <h1>Hidrantes</h1>

        <div class="container">
  <div class="row">
    <div class="col-sm">
      
    </div>
    <div class="col-lg-12">
        <table class="table">
            <tr>
                <th>ID</th>
                <th>Caudal</th>
                <th>Cantidad de salidas</th>
                <th>Tamaño de salidas</th>
                <th>Estado</th>
                <th>Longitud</th>
                <th>Latitud</th>
            </tr>
            <tbody id="listado"></tbody>
        </table>
    </div>
    <div class="col-sm">
      
    </div>
  </div>
</div>
    </body>
</html>
