/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package api.usuarios;

import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.NotFoundException;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import logic.Model;
import logic.Usuario;

/**
 *
 * @author paoma
 */
@Path("/usuarios")
public class Usuarios {
    
    Model model = new Model();
    
    @Context
    HttpServletRequest request;

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    public ArrayList<Usuario> listar() { 
            ArrayList<Usuario> funs = null;   
        try {
            funs = model.getUsuariosMunicipalidad();
        } catch (SQLException ex) {
        }
        return funs;
    } 

    @GET
    @Path("{id_usuario}")
    @Produces({MediaType.APPLICATION_JSON})
    public Usuario get(@PathParam("id_usuario") String id_usuario) {
        try {
            
            return model.getUsuarioMuni(id_usuario);
        } catch (Exception ex) {
        }
        return null;
    }
    
    
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public void update(Usuario f) {  
        try {
            model.updateUsuario(f);
            
        } catch (Exception ex) {
            throw new NotFoundException(); 
        }
    }
    
    @PUT
    @Path("{add}")
    @Consumes(MediaType.APPLICATION_JSON)
    public void add(Usuario f) {  
        try {
            model.addUsuario(f);
            
        } catch (Exception ex) {
            throw new NotFoundException(); 
        }
    }
    
     @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Usuario inicioSesion(Usuario us) {  
        try {
            if(model.getUsuario(us)==null)
                throw new RuntimeException("This is a crash... AHHHHH!!!!");;
            return model.getUsuario(us);    
        } catch (Exception ex) {
            throw new NotFoundException();
        }
        
    }
}
