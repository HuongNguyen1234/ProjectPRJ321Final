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
public class TrangThai {
    private String idTrangThai;
    private String tenTrangThai;

    public TrangThai(String idTrangThai, String tenTrangThai) {
        this.idTrangThai = idTrangThai;
        this.tenTrangThai = tenTrangThai;
    }

    public String getIdTrangThai() {
        return idTrangThai;
    }

    public void setIdTrangThai(String idTrangThai) {
        this.idTrangThai = idTrangThai;
    }

    public String getTenTrangThai() {
        return tenTrangThai;
    }

    public void setTenTrangThai(String tenTrangThai) {
        this.tenTrangThai = tenTrangThai;
    }
    
    
}
