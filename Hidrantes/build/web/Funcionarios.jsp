<%-- 
    Document   : View
    Created on : Jun 11, 2019, 11:44:57 PM
    Author     : paoma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de funcionarios</title>
        <script src="js/funcionarios.js" type="text/javascript"></script>
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
        <a class="nav-link" href="FormularioMantenimiento.jsp">Formulario de Mantenimiento<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="Inspecciones.jsp">Inspecciones<span class="sr-only">(current)</span></a>
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
        
        
        <div class="container">
  <div class="row">
    <div class="col-sm">
  
    </div>
    <div class="col-sm-11">
        <h1>Funcionarios</h1>
      <div class="input-group">
            <label for="busqueda">Nombre</label>
  <input type="text" id="busqueda" class="form-control" placeholder="Nombre...">
  <div class="input-group-append" id="button-addon4">
    <button class="btn btn-outline-secondary" type="button">Buscar</button>
    <button class="btn btn-outline-secondary" onclick="mostrarAddModal()" type="button">Agregar Usuario</button>
  </div>
</div>
        <table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Nombre</th>
      <th scope="col">Borrar</th>
    </tr>
  </thead>
  <tbody id="listado">
    
  </tbody>
</table>
    </div>
    <div class="col-sm">
      
    </div>
  </div>
</div>
        
       <div class="modal" tabindex="-1" role="dialog" id="modalUsuario">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Usuario</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="limpiarModal()">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body" id="divMostrarUsuario">
                  
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="guardarCambios()">Guardar cambios</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="limpiarModal()">Close</button>
                </div>
              </div>
            </div>
          </div>
        
        
        <div class="modal" tabindex="-1" role="dialog" id="modalAddUsuario">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Agregar Usuario</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="limpiarAddModal()">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body" id="divAddBombero">
                    <label for="idBom">ID</label>
                    <input type="text" class="form-control form-control-lg" id="idBom" aria-describedby="id" placeholder="ID..."><br>
                    <label for="nomBom">Nombre</label>
                    <input type="text" class="form-control form-control-lg" id="nomBom" aria-describedby="id" placeholder="Nombre..."><br>
                    <label for="conBom">Contrasena</label>
                    <input type="text" class="form-control form-control-lg" id="conBom" aria-describedby="id" placeholder="Contrasena..."><br>
                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="guardarUsuario()">Guardar usuario</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="limpiarAddModal()">Close</button>
                </div>
              </div>
            </div>
        </div>
        
        
        <div class="modal" tabindex="-1" role="dialog" id="noBorrado">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Usuario no borrado</h5>
                    <span aria-hidden="true">&times;</span>
                </div>
                <div class="modal-body">
                    
                    <div>El usuario a eliminar tiene inspecciones asignadas</div>
                    

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="javascript:window.location.reload();">Aceptar</button>
                </div>
              </div>
            </div>
        </div>           
        
        
        <div class="modal" tabindex="-1" role="dialog" id="borrado">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Usuario borrado</h5>
                    <span aria-hidden="true">&times;</span>
                </div>
                <div class="modal-body">
                    
                    <div> Bombero borrado exitosamente!</div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="javascript:window.location.reload()">Entendido!</button>
                </div>
              </div>
            </div>
        </div>  
    </body>
</html>
