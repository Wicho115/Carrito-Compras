package Controlador;

import java.sql.*;
import java.util.*;

/**
 *
 * @author Wicho
 */
public class Producto {

    private int Numero_DetalleVenta;
    private String Nombre_producto;
    private float Precio_producto;
    private int Stock_producto;
    private String UrlImagen_producto;
    
    public Producto(){
        
    }
    
    public Vector<Producto> listaProductos(){
        Vector<Producto> lista = new Vector<Producto>();
        Connection cn= null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        
        try{
            cn = Conexion.getConexion();
            String sql = "select * from producto";
            pr = cn.prepareStatement(sql);
            rs = pr.executeQuery();
            
            while(rs.next()){
                Producto p = new Producto();
                p.setNumero_DetalleVenta(rs.getInt("producto_Codigo"));
                p.setNombre_producto(rs.getString("producto_Nombre"));
                p.setStock_producto(rs.getInt("producto_stock"));
                p.setPrecio_producto(rs.getFloat("producto_Precio"));
                p.setUrlImagen_producto(rs.getString("producto_Url"));
                lista.add(p);
            }
        }catch(SQLException ex){
            ex.printStackTrace();
            lista = null;
        }finally{
            try{
                rs.close();
                pr.close();
                cn.close();
            }catch(SQLException ex){
                ex.printStackTrace();
            }
        }
        
        return lista;
    }
    
    
    public Producto buscarProducto(int codigo_prod){           
        Producto p = new Producto();
        Connection cn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        
        try{
            cn = Conexion.getConexion();
            String sql = "select * from producto where Codigo_Producto=?";
            pr = cn.prepareStatement(sql);
            pr.setInt(1,codigo_prod);
            rs = pr.executeQuery();
            while(rs.next()){
                p.setNumero_DetalleVenta(rs.getInt("Codigo_Producto"));
                p.setNombre_producto(rs.getString("producto_Nombre"));
                p.setPrecio_producto(rs.getFloat("producto_Precio"));
                p.setStock_producto(rs.getInt("producto_stock"));
                p.setUrlImagen_producto(rs.getString("producto_Url"));
            }
        }catch(SQLException ex){
            ex.printStackTrace();
            p = null;
        }finally{
            try{
                rs.close();
                pr.close();
                cn.close();
            }catch(SQLException ex){
                ex.printStackTrace();
            }
        }
        
        return p;
    }
    

    public int getNumero_DetalleVenta() {
        return Numero_DetalleVenta;
    }

    public void setNumero_DetalleVenta(int Numero_DetalleVenta) {
        this.Numero_DetalleVenta = Numero_DetalleVenta;
    }

    public String getNombre_producto() {
        return Nombre_producto;
    }

    public void setNombre_producto(String Nombre_producto) {
        this.Nombre_producto = Nombre_producto;
    }

    public float getPrecio_producto() {
        return Precio_producto;
    }

    public void setPrecio_producto(float Precio_producto) {
        this.Precio_producto = Precio_producto;
    }

    public int getStock_producto() {
        return Stock_producto;
    }

    public void setStock_producto(int Stock_producto) {
        this.Stock_producto = Stock_producto;
    }

    public String getUrlImagen_producto() {
        return UrlImagen_producto;
    }

    public void setUrlImagen_producto(String UrlImagen_producto) {
        this.UrlImagen_producto = UrlImagen_producto;
    }

}
