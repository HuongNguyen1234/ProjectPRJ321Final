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
public class Mien {
    private String maMien;
    private String tenMien;

    public Mien(String maMien, String tenMien) {
        this.maMien = maMien;
        this.tenMien = tenMien;
    }

    public String getMaMien() {
        return maMien;
    }

    public void setMaMien(String maMien) {
        this.maMien = maMien;
    }

    public String getTenMien() {
        return tenMien;
    }

    public void setTenMien(String tenMien) {
        this.tenMien = tenMien;
    }
    
}
