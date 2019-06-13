<%-- 
    Document   : rph
    Created on : Jun 13, 2019, 4:27:13 PM
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
        <script src="js/rph.js" type="text/javascript"></script>
        <title>RPH</title>
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
               <a class="nav-link" href="hidrantesBomberos.jsp">Hidrantes<span class="sr-only">(current)</span></a>
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
        
        <div class="container">
  <div class="row">
    <div class="col-sm">
        
    </div>
    <div class="col-sm-11">
        <form>
        <h1>Radio Positivo de Hidrantes</h1>
        <div class="form-row">
    <div class="form-group col-md-3">
      <label for="longitud">Longitud</label>
      <input type="text" class="form-control" id="longitud" placeholder="Longitud...">
    </div>
     <div class="form-group col-md-3">
      <label for="latitud">Latitud</label>
      <input type="text" class="form-control" id="latitud" placeholder="Latitud...">
    </div>
         <div class="form-group col-md-3">
      <label for="radio">Radio</label>
      <input type="text" class="form-control" id="radio" placeholder="Radio...">
    </div>
            <div class="form-group col-md-3">
                <button type="button" onclick="buscar()" class="btn btn-primary">Buscar hidrantes</button>
            </div>
 </form>    
  </div>
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
