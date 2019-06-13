<%-- 
    Document   : Inspecciones
    Created on : Jun 12, 2019, 10:14:01 PM
    Author     : paoma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/inspecciones.js" type="text/javascript"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
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
    <div class="col-lg-12">
        <h1>Inspecciones</h1>
        <table class="table">
            <tr>
                <th>ID</th>
                <th>Usuario</th>
                <th>Fecha</th>
                <th>Hidrantes</th>
            </tr>
            <tbody id="listadoIns"></tbody>
        </table>
    </div>
    <div class="col-sm">
      
    </div>
  </div>
</div>
        
        <div class="modal" tabindex="-1" role="dialog" id="modalHidrantes">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Hidrantes revisados</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="limpiarModal()">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Estado</th>
                            <th>Longitud</th>
                            <th>Latitud</th>
                        </tr>
                        <tbody id="listadoH"></tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="guardarCambios()">Guardar cambios</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="limpiarModal()">Close</button>
                </div>
              </div>
            </div>
          </div>
        
        
    </body>
</html>
