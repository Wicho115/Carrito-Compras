
package Controlador;

import java.sql.*;
import java.util.HashSet;
/*
 * @author Wicho
 */
public class Usuario {
    private int Codigo_usuario;
    private String Nombre_usuario;
    private String Apellido_usuario;
    private String User_usuario;
    private String Clave_usuario;
    private int Privilegio_usuario;
    
    public Usuario(){
        
    }
    
    public Usuario VerificarUsuario(String user, String Pass){
        Usuario u =null;
        Connection cn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        
        try{
            System.out.println("apunto de conectar");
            cn = Conexion.getConexion();
            System.out.println("Conecto");
            String sql = "select * from usuario where usuario_User=? and usuario_Clave=?";
            pr = cn.prepareStatement(sql);
            pr.setString(1,user);
            pr.setString(2,Pass);
            rs=pr.executeQuery();
            System.out.println("Iniciando while");
            while(rs.next()){
                u=new Usuario();
                u.setNombre_usuario(rs.getString("usuario_Nombre"));
                u.setApellido_usuario(rs.getString("usuario_Apellido"));
                u.setUser_usuario(rs.getString("usuario_User"));
                u.setClave_usuario(rs.getString("usuario_Clave"));
                u.setPrivilegio_usuario(rs.getInt("usuario_Privilegio"));
                u.setCodigo_usuario(rs.getInt("usuario_Codigo"));                
                break;
            }
        }catch(SQLException ex){
            ex.printStackTrace();
            u=null;
        }finally{
            try{
                rs.close();
                pr.close();
                cn.close();
            }catch(SQLException ex){
                ex.printStackTrace();
            }
        }
        
        return u;
    }

    
    
    
    public int getCodigo_usuario() {
        return Codigo_usuario;
    }

    public void setCodigo_usuario(int Codigo_usuario) {
        this.Codigo_usuario = Codigo_usuario;
    }

    public String getNombre_usuario() {
        return Nombre_usuario;
    }

    public void setNombre_usuario(String Nombre_usuario) {
        this.Nombre_usuario = Nombre_usuario;
    }

    public String getApellido_usuario() {
        return Apellido_usuario;
    }

    public void setApellido_usuario(String Apellido_usuario) {
        this.Apellido_usuario = Apellido_usuario;
    }

    public String getUser_usuario() {
        return User_usuario;
    }

    public void setUser_usuario(String User_usuario) {
        this.User_usuario = User_usuario;
    }

    public String getClave_usuario() {
        return Clave_usuario;
    }

    public void setClave_usuario(String Clave_usuario) {
        this.Clave_usuario = Clave_usuario;
    }

    public int getPrivilegio_usuario() {
        return Privilegio_usuario;
    }

    public void setPrivilegio_usuario(int Privilegio_usuario) {
        this.Privilegio_usuario = Privilegio_usuario;
    }
}
