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
    
    
    public Model(){
        dao = new Dao();
    }
    
    public ArrayList<Usuario> getUsuarios() throws SQLException{//Se trae todas las solicitudes existentes
        return dao.UsuariosGetAll();
    }
    public ArrayList<Usuario> getUsuariosBomberos() throws SQLException{//Se trae todas las solicitudes existentes
        return dao.UsuariosGetBomberos();
    }
    public void addUsuario(Usuario s)throws SQLException{
        dao.UsuarioAdd(s);
    }
    
    public void updateUsuario(Usuario s)throws SQLException{
        dao.updateUsuario(s);
    }
    public Usuario getUsuario(Usuario s) throws Exception{
        return dao.getUsuario(s);
    }
    
    
    public Usuario getUsuarioBom(String s) throws Exception{
        return dao.getUsuarioBom(s);
    }
    
    public ArrayList<Hidrante> getHidrantes() throws SQLException{//Se trae todas las solicitudes existentes
        return dao.HidrantesGetAll();
    }
    public void addHidrante(Hidrante s)throws SQLException{
        dao.HidranteAdd(s);
    }
    
}
