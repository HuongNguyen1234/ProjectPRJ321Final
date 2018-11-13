/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

/**
 *
 * @author huong karatedo
 */
public class Service {
    private int maBC;
    private String tenDV;
    private float giaDV;

    public Service(int maBC, String tenDV, float giaDV) {
        this.maBC = maBC;
        this.tenDV = tenDV;
        this.giaDV = giaDV;
    }

    public int getMaBC() {
        return maBC;
    }

    public void setMaBC(int maBC) {
        this.maBC = maBC;
    }

    public String getTenDV() {
        return tenDV;
    }

    public void setTenDV(String tenDV) {
        this.tenDV = tenDV;
    }

    public float getGiaDV() {
        return giaDV;
    }

    public void setGiaDV(float giaDV) {
        this.giaDV = giaDV;
    }

   
}
