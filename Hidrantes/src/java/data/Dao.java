/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import logic.Usuario;
import logic.Hidrante;

/**
 *
 * @author paoma
 */
public class Dao {
    RealDataBase db;
    
    public Dao(){
        db= new RealDataBase();
        
    }
    public ArrayList<Usuario> UsuariosGetAll () throws SQLException {
        String sql = "select * from usuario";
        
        ResultSet rs = db.executeQuery(sql);
        
        ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
        Usuario usuario = null;
        
        while(rs.next()){   
            usuario = usuario(rs);
            usuarios.add(usuario);
        }   
        return usuarios;
    }
    
    public ArrayList<Usuario> UsuariosGetBomberos () throws SQLException {
        String sql = "select * from usuario where departamento='BOMBEROS'";
        
        ResultSet rs = db.executeQuery(sql);
        
        ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
        Usuario usuario = null;
        
        while(rs.next()){   
            usuario = usuario(rs);
            usuarios.add(usuario);
        }   
        return usuarios;
    }
    
    public void UsuarioAdd(Usuario s)throws SQLException{
         String sql="insert into usuario (id, nombre, contrasena, departamento)"+
                "values('%s','%s','%s','%s')";
        sql=String.format(sql,s.getId(), s.getNombre(),s.getContrasena(),s.getDepartamento());
        db.executeUpdate(sql);
        
        
    }
    
    public Usuario getUsuario(Usuario s) throws SQLException {
        try {
            String sql = "select * from usuario where id='%s' and contrasena='%s'";
            sql = String.format(sql, s.getId(), s.getContrasena());
            ResultSet rs = db.executeQuery(sql);
            if(rs.next()){  
                return usuario(rs);
            }
        } catch (SQLException ex) {System.out.println(" MAL");}
        return null;
    }
    
    public Usuario getUsuarioBom(String s) throws SQLException {
        try {
            String sql = "select * from usuario where id='%s' and departamento='BOMBEROS'";
            sql = String.format(sql, s);
            ResultSet rs = db.executeQuery(sql);
            if(rs.next()){  
                return usuario(rs);
            }
        } catch (SQLException ex) {System.out.println(" MAL");}
        return null;
    }
    
    public void updateUsuario(Usuario d) throws SQLException{
        String sql="update usuario set nombre='%s' where id='%s'";
        sql=String.format(sql,d.getNombre(), d.getId());
        db.executeUpdate(sql);
    }
    
    private Usuario usuario (ResultSet rs) throws SQLException{
        
        try {
            
            Usuario usuario = new Usuario();
            usuario.setId(rs.getString("id"));
           usuario.setNombre(rs.getString("nombre"));
           usuario.setContrasena(rs.getString("contrasena"));
           usuario.setDepartamento(rs.getString("departamento"));
            return usuario;

        } catch (SQLException ex) {
            return null;
        } 
    }
    
    public ArrayList<Hidrante> HidrantesGetAll () throws SQLException {
        String sql = "select * from hidrante";
        
        ResultSet rs = db.executeQuery(sql);
        
        ArrayList<Hidrante> hidrantes = new ArrayList<Hidrante>();
        Hidrante hidrante = null;
        
        while(rs.next()){   
            hidrante = hidrante(rs);
            hidrantes.add(hidrante);
        }   
        return hidrantes;
    }
    
    public void HidranteAdd(Hidrante s)throws SQLException{
         String sql="insert into hidrante (id, caudal, numero_salidas, tamano_salidas, estado, latitud, longitud)"+
                "values('%s',%d, %d,'%s','%s', %f,%f)";
        sql=String.format(sql,s.getId(), s.getCaudal(), s.getNumero_salidas(), s.getTamano_salidas(), s.getEstado(), s.getLatitud(), s.getLongitud());
        db.executeUpdate(sql); 
    }
    private Hidrante hidrante (ResultSet rs) throws SQLException{
        
        try {
            
            Hidrante hidrante = new Hidrante();
            hidrante.setId(rs.getString("id"));
            hidrante.setCaudal(rs.getInt("caudal"));
            hidrante.setNumero_salidas(rs.getInt("numero_salidas"));
            hidrante.setTamano_salidas(rs.getString("tamano_salidas"));
            hidrante.setEstado(rs.getString("estado"));
            hidrante.setLatitud(rs.getFloat("latitud"));
            hidrante.setLongitud(rs.getFloat("longitud"));
            return hidrante;

        } catch (SQLException ex) {
            return null;
        } 
    }
}

