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
    
    public ArrayList<Bombero> getBomberos() throws SQLException{//Se trae todas las solicitudes existentes
        return dao.BomberosGetAll();
    }
    public void addBombero(Bombero s)throws SQLException{
        dao.BomberoAdd(s);
    }
    
    public void updateBombero(Bombero s)throws SQLException{
        dao.updateBombero(s);
    }
    public Bombero getBombero(String s) throws Exception{
        return dao.getBombero(s);
    
    }
    
}
