/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package api.hidrantesInspeccionados;

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
import logic.Hidrante;
import logic.Inspeccion_hidrante;
import logic.Inspeccion_ocular;
import logic.Model;
import logic.Usuario;

/**
 *
 * @author paoma
 */
@Path("/hidrantesInspeccionados")
public class HidrantesInspeccionados {
    
        Model model = new Model();
    
    @Context
    HttpServletRequest request;

    
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public ArrayList<Inspeccion_hidrante> add(Hidrante hid) throws SQLException {  
            Inspeccion_hidrante s = new Inspeccion_hidrante();
            s.setHidrante(hid);
            model.addInspeccion_hidrante(s);
            return model.getInspecciones();
    }  
    
     @GET
    @Path("{id}")
    @Produces({MediaType.APPLICATION_JSON})
    public ArrayList<Hidrante> get(@PathParam("id") String id) {
        try {
            
            return model.getInspeccionHidrante(id);
        } catch (Exception ex) {
        }
        return null;
    }
    
    
    @PUT
    @Path("{add}")
    @Consumes(MediaType.APPLICATION_JSON)
    public void add(Inspeccion_ocular c) {  
        try {
            model.addInspeccion_ocular(c);
            
        } catch (Exception ex) {
            throw new NotFoundException(); 
        }
   }
}
