/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package api.inspecciones;

import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.NotFoundException;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import logic.Formulario_trabajo_realizado;
import logic.Inspeccion_ocular;
import logic.Model;
import logic.Usuario;

/**
 *
 * @author paoma
 */
@Path("/inspecciones")
public class Inspecciones {

    Model model = new Model();
    
    @Context
    HttpServletRequest request;

    
    @GET
    @Produces({MediaType.APPLICATION_JSON})
    public ArrayList<Inspeccion_ocular> listar() { 
            ArrayList<Inspeccion_ocular> funs = null;   
        try {
            funs = model.getInspeccionesOculares();
        } catch (SQLException ex) {
        }
        return funs;
    } 
    @PUT
    @Path("{mante}")
    @Consumes(MediaType.APPLICATION_JSON)
    public void mantenimiento(Formulario_trabajo_realizado c) {  
        try {
            model.addFormulario(c);
            
        } catch (Exception ex) {
            throw new NotFoundException(); 
        }
   }
}