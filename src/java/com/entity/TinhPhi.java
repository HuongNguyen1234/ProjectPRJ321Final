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
public class TinhPhi {

    private String maKL;
    private String maMien;
    private float gia;

    public TinhPhi(String maKL, String maMien, float gia) {
        this.maKL = maKL;
        this.maMien = maMien;
        this.gia = gia;
    }

    public TinhPhi(String maMien, float gia) {
        this.maMien = maMien;
        this.gia = gia;
    }

    public String getMaKL() {
        return maKL;
    }

    public void setMaKL(String maKL) {
        this.maKL = maKL;
    }

    public String getMaMien() {
        return maMien;
    }

    public void setMaMien(String maMien) {
        this.maMien = maMien;
    }

    public float getGia() {
        return gia;
    }

    public void setGia(float gia) {
        this.gia = gia;
    }

}
