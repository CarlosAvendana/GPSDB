/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package api.hidrantes;

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
import logic.Formulario_trabajo_realizado;
import logic.Hidrante;
import logic.Model;
import logic.RPH;

/**
 *
 * @author paoma
 */
@Path("/hidrantes")
public class Hidrantes {

    Model model = new Model();
    
    @Context
    HttpServletRequest request;

    
    @GET
    @Produces({MediaType.APPLICATION_JSON})
    public ArrayList<Hidrante> listar() { 
            ArrayList<Hidrante> hid = null;   
        try {
            hid = model.getHidrantes();
        } catch (SQLException ex) {
        }
        return hid;
    } 

//   @GET
//    @Path("{id_bombero}")
//    @Produces({MediaType.APPLICATION_JSON})
//    public Bombero get(@PathParam("id_bombero") String id_bombero) {
//        try {
//            return model.getBombero(id_bombero);
//        } catch (Exception ex) {
//        }
//        return null;
//    }
//    
//    
//    @PUT
//    @Consumes(MediaType.APPLICATION_JSON)
//    public void update(Bombero c) {  
//        try {
//            model.updateBombero(c);
//            
//        } catch (Exception ex) {
//            throw new NotFoundException(); 
//        }
//    }
    
    @PUT
    @Path("{add}")
    @Consumes(MediaType.APPLICATION_JSON)
    public void add(Formulario_trabajo_realizado c) {  
        try {
            model.addFormulario(c);
            model.addHidrante(c.getHidrante());
            
        } catch (Exception ex) {
            throw new NotFoundException(); 
        }
   }
   @POST
    @Produces({MediaType.APPLICATION_JSON})
    public ArrayList<Hidrante> get(RPH rph) {
        try {
            return model.getRPH(rph.getLon(),rph.getLat(), rph.getRa());
        } catch (Exception ex) {
        }
        return null;
    }
     
}
