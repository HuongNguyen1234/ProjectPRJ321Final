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
public class Order {
    private String maDH;
    private int maBC;
    private String tenNguoiGui;
    private String diaChiGui;
    private int sdtGui;
    private String tenNguoiNhan;
    private String diaChiNhan;
    private String loaiHang;
    private int khoiLuong;
    private int sdtNhan;
    private String IdTrangThai;
    private float phiShip;
    private float phiThuHo;
    private float tongTien;
    
    public Order(String maDH, int maBC, String tenNguoiGui, String diaChiGui, int sdtGui, String tenNguoiNhan, String diaChiNhan, String loaiHang, int khoiLuong, int sdtNhan, String IdTrangThai, float phiShip, float phiThuHo, float tongTien) {
        this.maDH = maDH;
        this.maBC = maBC;
        this.tenNguoiGui = tenNguoiGui;
        this.diaChiGui = diaChiGui;
        this.sdtGui = sdtGui;
        this.tenNguoiNhan = tenNguoiNhan;
        this.diaChiNhan = diaChiNhan;
        this.loaiHang = loaiHang;
        this.khoiLuong = khoiLuong;
        this.sdtNhan = sdtNhan;
        this.IdTrangThai = IdTrangThai;
        this.phiShip = phiShip;
        this.phiThuHo = phiThuHo;
        this.tongTien = tongTien;
    }

    public String getMaDH() {
        return maDH;
    }

    public void setMaDH(String maDH) {
        this.maDH = maDH;
    }

    public int getMaBC() {
        return maBC;
    }

    public void setMaBC(int maBC) {
        this.maBC = maBC;
    }

    public String getTenNguoiGui() {
        return tenNguoiGui;
    }

    public void setTenNguoiGui(String tenNguoiGui) {
        this.tenNguoiGui = tenNguoiGui;
    }

    public String getDiaChiGui() {
        return diaChiGui;
    }

    public void setDiaChiGui(String diaChiGui) {
        this.diaChiGui = diaChiGui;
    }

    public int getSdtGui() {
        return sdtGui;
    }

    public void setSdtGui(int sdtGui) {
        this.sdtGui = sdtGui;
    }

    public String getTenNguoiNhan() {
        return tenNguoiNhan;
    }

    public void setTenNguoiNhan(String tenNguoiNhan) {
        this.tenNguoiNhan = tenNguoiNhan;
    }

    public String getDiaChiNhan() {
        return diaChiNhan;
    }

    public void setDiaChiNhan(String diaChiNhan) {
        this.diaChiNhan = diaChiNhan;
    }

    public String getLoaiHang() {
        return loaiHang;
    }

    public void setLoaiHang(String loaiHang) {
        this.loaiHang = loaiHang;
    }

    public int getKhoiLuong() {
        return khoiLuong;
    }

    public void setKhoiLuong(int khoiLuong) {
        this.khoiLuong = khoiLuong;
    }

    public int getSdtNhan() {
        return sdtNhan;
    }

    public void setSdtNhan(int sdtNhan) {
        this.sdtNhan = sdtNhan;
    }

    public String getIdTrangThai() {
        return IdTrangThai;
    }

    public void setIdTrangThai(String IdTrangThai) {
        this.IdTrangThai = IdTrangThai;
    }

    public float getPhiShip() {
        return phiShip;
    }

    public void setPhiShip(float phiShip) {
        this.phiShip = phiShip;
    }

    public float getPhiThuHo() {
        return phiThuHo;
    }

    public void setPhiThuHo(float phiThuHo) {
        this.phiThuHo = phiThuHo;
    }

    public float getTongTien() {
        return tongTien;
    }

    public void setTongTien(float tongTien) {
        this.tongTien = tongTien;
    }

   

   

}
