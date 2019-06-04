/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
    Connection  cnx;
    
    public RealDataBase(){
        cnx=this.dbConnection();
    }
    
    public Connection dbConnection(){
        try{
        Class.forName("org.postgresql.Driver");
        }
        catch(ClassNotFoundException e){
            e.getMessage();
        }
        try {
            cnx = DriverManager.getConnection(url,user,password);
            System.out.println("Connected");
        } catch (SQLException ex) {
            Logger.getLogger(RealDataBase.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Failed");
        }
        return cnx;
    }
    public int executeUpdate(String statement) {
        try {
            Statement stm = cnx.createStatement();
            stm.executeUpdate(statement);
            return stm.getUpdateCount();
        } catch (SQLException ex) {
            return 0;
        }
    }
    public ResultSet executeQuery(String statement){
        try {
            Statement stm = cnx.createStatement();
            return stm.executeQuery(statement);
        } catch (SQLException ex) {
        }
        return null;
    }
    
    public int executeUpdateWithKeys(String statement) {
        try {
            Statement stm = cnx.createStatement();
            stm.executeUpdate(statement,Statement.RETURN_GENERATED_KEYS);
            ResultSet keys = stm.getGeneratedKeys();
            keys.next();
            return keys.getInt(1);
        } catch (SQLException ex) {
            return -1;
        }
    }    
 
   
}
