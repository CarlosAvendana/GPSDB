<%-- 
    Document   : bomberos
    Created on : Jun 4, 2019, 11:33:15 PM
    Author     : paoma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="js/jquery.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bomberos</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <script src="js/bomberos.js" type="text/javascript"></script>
    </head>
    <body>
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
        <h1>Bomberos</h1>
        <table>
            <tr><td colspan="3"><button class="btnSearch" onclick="mostrarAddModal()">Agregar bombero</button></td></tr>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Editar</th>
            </tr>
            <tbody id="listado"></tbody>
        </table>
        
        <div class="modal" tabindex="-1" role="dialog" id="modalBombero">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Bombero</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="limpiarModal()">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body" id="divMostrarBombero">
                  
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="guardarCambios()">Guardar cambios</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="limpiarModal()">Cerrar</button>
                </div>
              </div>
            </div>
          </div>
        
        
        <div class="modal" tabindex="-1" role="dialog" id="modalAddBombero">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Agregar Bombero</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="limpiarAddModal()">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body" id="divAddBombero">
                    ID: <input type="text" id="id_bombero" value=""><br>
                    Nombre: <input type="text" id="nombre" value="">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="guardarBombero()">Guardar</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="limpiarAddModal()">Close</button>
                </div>
              </div>
            </div>
        </div>
        
        
        
    </body>
</html>
