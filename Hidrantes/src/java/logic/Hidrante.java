/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logic;

/**
 *
 * @author paoma
 */
public class Hidrante {
    String codigo;
    int caudal;
    int numero_salidas;
    String tamano_salidas;
    String estado;
    float latitud;
    float longitud;

    public Hidrante() {
        this.estado="Excelente";
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public int getCaudal() {
        return caudal;
    }

    public void setCaudal(int caudal) {
        this.caudal = caudal;
    }

    public int getNumero_salidas() {
        return numero_salidas;
    }

    public void setNumero_salidas(int numero_salidas) {
        this.numero_salidas = numero_salidas;
    }

    public String getTamano_salidas() {
        return tamano_salidas;
    }

    public void setTamano_salidas(String tamano_salidas) {
        this.tamano_salidas = tamano_salidas;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public float getLatitud() {
        return latitud;
    }

    public void setLatitud(float latitud) {
        this.latitud = latitud;
    }

    public float getLongitud() {
        return longitud;
    }

    public void setLongitud(float longitud) {
        this.longitud = longitud;
    }
    
    
    
}
