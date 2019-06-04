/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.sql.SQLException;

/**
 *
 * @author paoma
 */
public class Dao {
    RealDataBase db;
    
    public Dao(){
        db= new RealDataBase();
        
    }
    public void BomberoAdd()throws SQLException{
         String sql="insert into bombero (codigo, nombre)"+
                "values(111,'Juan Lopez')";
        
        db.executeUpdate(sql);
    }
    
}
