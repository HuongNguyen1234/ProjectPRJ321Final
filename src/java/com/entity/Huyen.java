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
public class Huyen {
    private float maTinh;
    private float maHuyen;
    private String tenHuyen;

    public Huyen(float maTinh, float maHuyen, String tenHuyen) {
        this.maTinh = maTinh;
        this.maHuyen = maHuyen;
        this.tenHuyen = tenHuyen;
    }

    public float getMaTinh() {
        return maTinh;
    }

    public void setMaTinh(float maTinh) {
        this.maTinh = maTinh;
    }

    public float getMaHuyen() {
        return maHuyen;
    }

    public void setMaHuyen(float maHuyen) {
        this.maHuyen = maHuyen;
    }

    public String getTenHuyen() {
        return tenHuyen;
    }

    public void setTenHuyen(String tenHuyen) {
        this.tenHuyen = tenHuyen;
    }

   
    
     
}
