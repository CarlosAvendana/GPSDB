/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logic;

import data.Dao;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author paoma
 */
public class Model {
    private Dao dao;
     
    private static Model uniqueInstance;
    private static ArrayList<Inspeccion_hidrante> hidrantes=new ArrayList<Inspeccion_hidrante>();
    
    public Model(){
        dao = new Dao();
    }
    public void addInspeccion_hidrante(Inspeccion_hidrante e){
        hidrantes.add(e);
    }
    public void addInspeccion_ocular(Inspeccion_ocular i) throws SQLException{
        dao.Inspeccion_ocularAdd(i);
        for(int j = 0; j < hidrantes.size(); j++){
            hidrantes.get(j).setInspeccion_ocular(i);
            dao.Inspeccion_hidranteAdd(hidrantes.get(j));
        }
        hidrantes = new ArrayList<Inspeccion_hidrante>();
    }
    public ArrayList<Inspeccion_hidrante> getInspecciones() throws SQLException{//Se trae todas las solicitudes existentes
        return hidrantes;
    }
    public ArrayList<Usuario> getUsuarios() throws SQLException{//Se trae todas las solicitudes existentes
        return dao.UsuariosGetAll();
    }
    public ArrayList<Usuario> getUsuariosBomberos() throws SQLException{//Se trae todas las solicitudes existentes
        return dao.UsuariosGetBomberos();
    }
     public ArrayList<Usuario> getUsuariosMunicipalidad() throws SQLException{//Se trae todas las solicitudes existentes
        return dao.UsuariosGetMunicipalidad();
    }
    public void addUsuario(Usuario s)throws SQLException{
        dao.UsuarioAdd(s);
    }
    public ArrayList<Hidrante> getRPH(float a, float b, float c) throws SQLException{
        return dao.getRPH(a, b, c);
    }
    
    public void addFormulario(Formulario_trabajo_realizado s)throws SQLException{
        dao.FormularioAdd(s);
    }
    
    public void updateUsuario(Usuario s)throws SQLException{
        dao.updateUsuario(s);
    }
    public Usuario getUsuario(Usuario s) throws Exception{
        return dao.getUsuario(s);
    }
    
    public ArrayList<Hidrante> getInspeccionHidrante(String id_inspeccion) throws Exception{
        return dao.getHidrantePorInspeccion(id_inspeccion);
    }
    
    public Usuario getUsuarioBom(String s) throws Exception{
        return dao.getUsuarioBom(s);
    }
    
    public Usuario getUsuarioMuni(String s) throws Exception{
        return dao.getUsuarioMuni(s);
    }
    
    public ArrayList<Hidrante> getHidrantes() throws SQLException{//Se trae todas las solicitudes existentes
        return dao.HidrantesGetAll();
    }
    public void addHidrante(Hidrante s)throws SQLException{
        dao.HidranteAdd(s);
    }
    public ArrayList<Inspeccion_ocular> getInspeccionesOculares() throws SQLException{//Se trae todas las solicitudes existentes
        return dao.Inspeccion_OcularGetAll();
    }
}
