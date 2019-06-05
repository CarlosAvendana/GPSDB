/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package api.bomberos;

import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.NotFoundException;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import logic.Bombero;
import logic.Model;

/**
 *
 * @author paoma
 */

    @Path("/bomberos")
public class Bomberos {

    Model model = new Model();
    
    @Context
    HttpServletRequest request;

    
    @GET
    @Produces({MediaType.APPLICATION_JSON})
    public ArrayList<Bombero> listar() { 
            ArrayList<Bombero> bom = null;   
        try {
            bom = model.getBomberos();
        } catch (SQLException ex) {
        }
        return bom;
    } 

   @GET
    @Path("{id_bombero}")
    @Produces({MediaType.APPLICATION_JSON})
    public Bombero get(@PathParam("id_bombero") String id_bombero) {
        try {
            return model.getBombero(id_bombero);
        } catch (Exception ex) {
        }
        return null;
    }
    
    
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public void update(Bombero c) {  
        try {
            model.updateBombero(c);
            
        } catch (Exception ex) {
            throw new NotFoundException(); 
        }
    }
    
    @PUT
    @Path("{add}")
    @Consumes(MediaType.APPLICATION_JSON)
    public void add(Bombero c) {  
        try {
            model.addBombero(c);
            
        } catch (Exception ex) {
            throw new NotFoundException(); 
        }
   }
    
    
}
