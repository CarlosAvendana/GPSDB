/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author paoma
 */
public class RealDataBase {
    String url="jdbc:postgresql://localhost:5433/hidrantes";
    String user="postgres";
    String password="postgres";
    Connection  connection;
    
    public Connection dbConnection(){
        try{
        Class.forName("org.postgresql.Driver");
        }
        catch(ClassNotFoundException e){
            e.getMessage();
        }
        try {
            DriverManager.getConnection(url,user,password);
            System.out.println("Connected");
        } catch (SQLException ex) {
            Logger.getLogger(RealDataBase.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Failed");
        }
        return connection;
    }
 
   
}
