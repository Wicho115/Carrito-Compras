
package Controlador;

import java.sql.*;

/*
 * @author Wicho
 */

public class Conexion {
    public static Connection getConexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/carrito";
            String usuario="root";
            String clave="n0m3l0.1234567891598520";
            return DriverManager.getConnection(url,usuario,clave);
        }catch(SQLException ex){
            ex.printStackTrace();
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return null;
    }
}
