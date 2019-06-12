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
public class Inspeccion_hidrante {
    Inspeccion_ocular inspeccion_ocular;
    Hidrante hidrante;

    public Inspeccion_hidrante() {
    }

    public Inspeccion_ocular getInspeccion_ocular() {
        return inspeccion_ocular;
    }

    public void setInspeccion_ocular(Inspeccion_ocular inspeccion_ocular) {
        this.inspeccion_ocular = inspeccion_ocular;
    }

    public Hidrante getHidrante() {
        return hidrante;
    }

    public void setHidrante(Hidrante hidrante) {
        this.hidrante = hidrante;
    }
    
}
