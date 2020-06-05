/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

/**
 *
 * @author Wicho
 */
public class DetalleVenta {
    private int Codigo_Venta;
    private int Numero_DetalleVenta;
    private int Codigo_Producto;
    private int Cantidad_DetalleVenta;
    private double Subtotal_DetalleVenta;

    /** Crea un nueva instancia de la clase detalleventa */
    public DetalleVenta(){

    }

    public int getCodigo_Venta() {
        return Codigo_Venta;
    }

    public void setCodigo_Venta(int Codigo_Venta) {
        this.Codigo_Venta = Codigo_Venta;
    }

    public int getNumero_DetalleVenta() {
        return Numero_DetalleVenta;
    }

    public void setNumero_DetalleVenta(int Numero_DetalleVenta) {
        this.Numero_DetalleVenta = Numero_DetalleVenta;
    }

    public int getCodigo_Producto() {
        return Codigo_Producto;
    }

    public void setCodigo_Producto(int Codigo_Producto) {
        this.Codigo_Producto = Codigo_Producto;
    }

    public int getCantidad_DetalleVenta() {
        return Cantidad_DetalleVenta;
    }

    public void setCantidad_DetalleVenta(int Cantidad_DetalleVenta) {
        this.Cantidad_DetalleVenta = Cantidad_DetalleVenta;
    }

    public double getSubtotal_DetalleVenta() {
        return Subtotal_DetalleVenta;
    }

    public void setSubtotal_DetalleVenta(double Subtotal_DetalleVenta) {
        this.Subtotal_DetalleVenta = Subtotal_DetalleVenta;
    }

    /** Metodos GET de la clase detalleventa */
	
}
