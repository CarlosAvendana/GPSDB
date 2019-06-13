/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import logic.Formulario_trabajo_realizado;
import logic.Usuario;
import logic.Hidrante;
import logic.Inspeccion_hidrante;
import logic.Inspeccion_ocular;

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
    
    public ArrayList<Usuario> UsuariosGetMunicipalidad () throws SQLException {
        String sql = "select * from usuario where departamento='MUNICIPALIDAD'";
        
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
         String sql="select * from FUNC_USUARIO_INSERTAR('%s','%s','%s','%s')";
        sql=String.format(sql,s.getId(), s.getNombre(),s.getContrasena(),s.getDepartamento());
        db.executeUpdate(sql);  
    }
    
    public ArrayList<Hidrante> getRPH(float lon, float lan, float r)throws SQLException{
        String sql="select * from FUNC_RPH(%f,%f,%f)";
        sql=String.format(sql,lon,lan,r);
        ResultSet rs = db.executeQuery(sql);  
        ArrayList<Hidrante> hidrantes = new ArrayList<Hidrante>();
        Hidrante hidrante = null;
        
        while(rs.next()){   
            hidrante = hidrante(rs);
            hidrantes.add(hidrante);
        }   
        return hidrantes;
    }
    
     public void FormularioAdd(Formulario_trabajo_realizado s)throws SQLException{
         String sql="insert into formulario_trabajo_realizado (hidrante,fecha,tipo)"+
                "values('%s','%s','%s')";
        sql=String.format(sql,s.getHidrante().getId(), s.getFecha(),s.getTipo());
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
    
    public Hidrante getHidrante(String s) throws SQLException {
        try {
            String sql = "select * from hidrante where id='%s'";
            sql = String.format(sql, s);
            ResultSet rs = db.executeQuery(sql);
            if(rs.next()){  
                return hidrante(rs);
            }
        } catch (SQLException ex) {System.out.println(" MAL");}
        return null;
    }
    
    public ArrayList<Hidrante> getHidrantePorInspeccion(String s) throws SQLException {
        try {
            String sql = "select hidrante from hidrante, inspeccion_hidrante where inspeccion_hidrante.inspeccion_ocular='%s' and hidrante.id = inspeccion_hidrante.hidrante";
            sql = String.format(sql, s);
            ResultSet rs = db.executeQuery(sql);
            ArrayList<Hidrante> hidrantes = new ArrayList<Hidrante>();
        Hidrante hidrante = null;
        
        while(rs.next()){   
            hidrante = hidrante(rs);
            hidrantes.add(hidrante);
        }   
        return hidrantes;
        } catch (SQLException ex) {System.out.println(" MAL");}
        return null;
    }
    
     public Inspeccion_ocular getInspeccion_ocular(String s) throws SQLException {
        try {
            String sql = "select * from inspeccion_ocular where id='%s'";
            sql = String.format(sql, s);
            ResultSet rs = db.executeQuery(sql);
            if(rs.next()){  
                return inspeccion_ocular(rs);
            }
        } catch (SQLException ex) {System.out.println(" MAL");}
        return null;
    }
    
    public Usuario getUsuario(String s) throws SQLException {
        try {
            String sql = "select * from usuario where id='%s'";
            sql = String.format(sql, s);
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
    
    public Usuario getUsuarioMuni(String s) throws SQLException {
        try {
            String sql = "select * from usuario where id='%s' and departamento='MUNICIPALIDAD'";
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
    public ArrayList<Inspeccion_ocular> Inspeccion_OcularGetAll () throws SQLException {
        String sql = "select * from inspeccion_ocular";
        
        ResultSet rs = db.executeQuery(sql);
        
        ArrayList<Inspeccion_ocular> inspecciones = new ArrayList<Inspeccion_ocular>();
        Inspeccion_ocular inspeccion = null;
        
        while(rs.next()){   
            inspeccion = inspeccion_ocular(rs);
            inspecciones.add(inspeccion);
        }   
        return inspecciones;
    }
    
    public void HidranteAdd(Hidrante s)throws SQLException{
         String sql="select * from FUNC_HIDRANTE_INSERTAR('%s',%d, %d,'%s','%s', %f,%f)";
        sql=String.format(sql,s.getId(), s.getCaudal(), s.getNumero_salidas(), s.getTamano_salidas(), s.getEstado(), s.getLatitud(), s.getLongitud());
        db.executeUpdate(sql); 
    }
    public void Inspeccion_ocularAdd(Inspeccion_ocular s)throws SQLException{
         String sql="select * from FUNC_INSPECCION_OCULAR_INSERTAR('%s','%s', '%s')";
        sql=String.format(sql,s.getId(), s.getUsuario().getId(), s.getFecha());
        db.executeUpdate(sql); 
    }
    public void Inspeccion_hidranteAdd(Inspeccion_hidrante s)throws SQLException{
         String sql="select * from FUNC_INSPECCION_OCULAR_INSERTAR('%s','%s')";
        sql=String.format(sql,s.getInspeccion_ocular().getId(), s.getHidrante().getId());
        db.executeUpdate(sql); 
        this.updateHidrante(s.getHidrante().getId(),s.getHidrante().getEstado());
    }
    private void updateHidrante(String id, String estado)throws SQLException{
        String sql="update hidrante set estado='%s' where id='%s'";
        sql=String.format(sql,estado, id);
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
    private Inspeccion_hidrante inspeccion_hidrante(ResultSet rs) throws SQLException{
        
        try {
            Inspeccion_hidrante inspeccion_hidrante = new Inspeccion_hidrante();
            inspeccion_hidrante.setInspeccion_ocular(this.getInspeccion_ocular(rs.getString("id")));
            inspeccion_hidrante.setHidrante(this.getHidrante(rs.getString("hidrante")));
            return inspeccion_hidrante;

        } catch (SQLException ex) {
            return null;
        } 
    }
    private Inspeccion_ocular inspeccion_ocular(ResultSet rs) throws SQLException{
        
        try {
            Inspeccion_ocular inspeccion_ocular = new Inspeccion_ocular();
            inspeccion_ocular.setId(rs.getString("id"));
            inspeccion_ocular.setUsuario(this.getUsuario(rs.getString("usuario")));
            inspeccion_ocular.setFecha(rs.getString("fecha"));
            return inspeccion_ocular;

        } catch (SQLException ex) {
            return null;
        } 
    }
}

