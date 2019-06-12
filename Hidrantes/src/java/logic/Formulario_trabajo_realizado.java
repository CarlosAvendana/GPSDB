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
public class Formulario_trabajo_realizado {
    String id;
    String tipo;
    String fecha;
    Hidrante hidrante;

    public Formulario_trabajo_realizado() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public Hidrante getHidrante() {
        return hidrante;
    }

    public void setHidrante(Hidrante hidrante) {
        this.hidrante = hidrante;
    }
    
}
