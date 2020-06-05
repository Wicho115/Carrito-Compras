
package Controlador;

import java.sql.*;
import java.util.Vector;
/*
 * @author Wicho
 */
public class Venta {
    private int Codigo_Venta;
	private String venta_Fecha;
	private int usuario_Codigo;
	private double venta_TotalPagar;

	/** Crea un nueva instancia de la clase venta */
	public Venta(){

	}

    /**
     * Obtener el ultimo codigo que se genero de forma automatica
     * @return Retorna el codigo que se genero de la tabla Venta
     */
    private int ultimoCodigoInserto(Connection cn){
        int codigo=0;
        PreparedStatement pr=null;
        ResultSet rs=null;
        try{
            String sql="SELECT MAX(Codigo_Venta) as Codigo FROM Venta";
            pr=cn.prepareStatement(sql);
            rs=pr.executeQuery();
            while(rs.next()){
                codigo=rs.getInt("Codigo");
                break;
            }
        }catch(SQLException ex){
            ex.printStackTrace();
        }finally{
            try{
                rs.close();
                pr.close();
            }catch(SQLException ex){

            }
        }
        return codigo;
    }

    /**
     * Metodo utilizado para registrar una venta dentro de la base de datos
     * @param v Informacion de la venta
     * @param dv Detalle de la venta
     * @return Retorma un valor valor boolean que indica si se registro o no en la base de datos la venta
     */
    public boolean registrarVenta(Venta v, Vector<DetalleVenta> ldv){
        boolean registro=false;
        Connection cn=null;
        PreparedStatement pr=null;
        try{
            cn=Conexion.getConexion();
            String sql="INSERT INTO Venta(venta_Fecha,usuario_Codigo,venta_TotalPagar) ";
            sql+=" VALUES(?,?,?)";
            pr=cn.prepareStatement(sql);
            pr.setString(1, v.getVenta_fecha());
            pr.setInt(2, v.getUsuario_codigo());
            pr.setDouble(3, v.getVenta_totalpagar());
            //Se registro en la base de datos
            if(pr.executeUpdate()==1){
                int codigo=this.ultimoCodigoInserto(cn);
                registro=this.registrarDetalleVenta(codigo, ldv, cn);
            }else{
                registro=false;
            }
        }catch(SQLException ex){
            ex.printStackTrace();
            registro=false;
        }finally{
            try{
                pr.close();
                cn.close();
            }catch(SQLException ex){

            }
        }
        return registro;
    }

    /**
     * Metodo utilizado para registrar el detalle de la venta
     * @param codigo Representa el codigo de la Venta
     * @param ldv Lista con los detalles de la Venta
     * @param cn Conexion con la base de datos
     */
    private boolean registrarDetalleVenta(int codigo, Vector<DetalleVenta> ldv, Connection cn){
        boolean registro=false;
        PreparedStatement pr=null;
        try{
            for(DetalleVenta dv : ldv){
                String sql="INSERT INTO DetalleVenta VALUES(?,?,?,?,?)";
                pr=cn.prepareStatement(sql);
                pr.setInt(1, codigo);
                pr.setInt(2, dv.getNumero_DetalleVenta());
                pr.setInt(3, dv.getCodigo_Producto());
                pr.setInt(4, dv.getCantidad_DetalleVenta());
                pr.setDouble(5, dv.getSubtotal_DetalleVenta());
                if(pr.executeUpdate()==1){
                    registro=true;
                }else{
                    registro=false;
                    break;
                }
            }
        }catch(SQLException ex){
            ex.printStackTrace();
            registro=false;
        }finally{
            try{
                pr.close();
            }catch(SQLException ex){

            }
        }
        return registro;
    }

	/** Metodos GET de la clase venta */
	public int getCodigo_Venta(){
		 return this.Codigo_Venta;
	}
	public String getVenta_fecha(){
		 return this.venta_Fecha;
	}
	public int getUsuario_codigo(){
		 return this.usuario_Codigo;
	}
	public double getVenta_totalpagar(){
		 return this.venta_TotalPagar;
	}

	/** Metodos SET de la clase venta */

	public void setCodigo_Venta(int Codigo_Venta){
		 this.Codigo_Venta=Codigo_Venta;
	}
	public void setVenta_fecha(String venta_Fecha){
		 this.venta_Fecha=venta_Fecha;
	}
	public void setUsuario_codigo(int usuario_Codigo){
		 this.usuario_Codigo=usuario_Codigo;
	}
	public void setVenta_totalpagar(double venta_TotalPagar){
		 this.venta_TotalPagar=venta_TotalPagar;
	}
}
