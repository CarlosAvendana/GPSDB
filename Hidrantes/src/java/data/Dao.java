/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import logic.Bombero;

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
    public ArrayList<Bombero> BomberosGetAll () throws SQLException {
        String sql = "select * from bombero";
        
        ResultSet rs = db.executeQuery(sql);
        
        ArrayList<Bombero> bomberos = new ArrayList<Bombero>();
        Bombero bombero = null;
        
        while(rs.next()){   
            bombero = bombero(rs);
            bomberos.add(bombero);
        }   
        return bomberos;
    }
    
    public void BomberoAdd(Bombero s)throws SQLException{
         String sql="insert into bombero (codigo, nombre)"+
                "values('%s','%s')";
        sql=String.format(sql,s.getId(), s.getNombre());
        db.executeUpdate(sql);
        
        
    }
    
    public Bombero getBombero(String s) throws SQLException {
        try {
            String sql = "select * from bombero where codigo='%s'";
            sql = String.format(sql, s);
            ResultSet rs = db.executeQuery(sql);
            if(rs.next()){  
                return bombero(rs);
            }
        } catch (SQLException ex) {System.out.println(" MAL");}
        return null;
    }
    
    public void updateBombero(Bombero d) throws SQLException{
        String sql="update bombero set nombre='%s' where codigo='%s'";
        sql=String.format(sql,d.getNombre(), d.getId());
        db.executeUpdate(sql);
    }
    
    private Bombero bombero (ResultSet rs) throws SQLException{
        
        try {
            
            Bombero bombero = new Bombero();
            bombero.setId(rs.getString("codigo"));
           bombero.setNombre(rs.getString("nombre"));
            return bombero;

        } catch (SQLException ex) {
            return null;
        } 
    }
    
}

