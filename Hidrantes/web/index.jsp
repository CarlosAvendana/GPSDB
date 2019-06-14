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
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hidrantes</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/sesion.js" type="text/javascript"></script>
    </head>
    <body>
        <% Dao rdb = new Dao(); %>
        
        <nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Mantenimiento de Hidrantes</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  
</nav>
        
        <div class="container">
            <div class="row">
                <div class="col-auto"></div>
            </div>
  <div class="row">
    <div class="col-sm">
      
    </div>
    <div class="col-sm-7">
      <form>
             <div>
        <table class="table  mr-md-3 mg-5"> 
            <tr><td>

  <div class="form-group">
    <label for="id">ID</label>
    <input type="text" class="form-control form-control-lg" id="id" aria-describedby="id" placeholder="ID...">
  </div>
  <div class="form-group">
    <label for="contrasena">Contraseña</label>
    <input type="password" class="form-control form-control-lg" id="contrasena" placeholder="Contraseña...">
  </div>
  <div class="form-group">
  <button type="button" class="btn btn-primary btn-lg btn-block" onclick="inicioSesion()">Iniciar Sesión</button>
  </div>
                </td></tr>
        </table>
             </div>
             </form>
    </div>
    <div class="col-sm">
      
    </div>
  </div>
</div>
        
        <div class="modal" tabindex="-1" role="dialog" id="falloLogin">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Fallo al inicio de sesión</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Usuario no registrado</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
         
    </body>
</html>
