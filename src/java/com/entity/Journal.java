/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

import com.controller.ListPostController;
import com.data1.DAO;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author huong karatedo
 */
public class Journal {

    private String IdHT;
    private String maDH;
    private String trangThai;
    private Date thoiGian;
    private String diaChi;

    public Journal(String IdHT, String maDH, String trangThai, Date thoiGian, String diaChi) {
        this.IdHT = IdHT;
        this.maDH = maDH;
        this.trangThai = trangThai;
        this.thoiGian = thoiGian;
        this.diaChi = diaChi;
    }

    public String getIdHT() {
        return IdHT;
    }

    public void setIdHT(String IdHT) {
        this.IdHT = IdHT;
    }

    public String getMaDH() {
        return maDH;
    }

    public void setMaDH(String maDH) {
        this.maDH = maDH;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public Date getThoiGian() {
        return thoiGian;
    }

    public void setThoiGian(Date thoiGian) {
        this.thoiGian = thoiGian;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    @Override
    public String toString() {
        String tt = null;
        String dc = null;
        DAO dao = new DAO();
        try {
            Order or = dao.getOrderByDH(maDH);
            Post p = dao.getPost(or.getMaBC());
            String tentinh = dao.getTenTinh(p.getMatinh());
            String tenhuyen = dao.getTenTinh(p.getMaHuyen());
            ListPostController list = new ListPostController();
            if (trangThai.equals("1d")) {
                tt = "Đã nhận đơn";

                dc = p.getXa() + p.getThon() + tenhuyen + tentinh;
            } else if (trangThai.equals("2d")) {
                tt = "Đang vẫn chuyển";
                ListPostController listp = (ListPostController) dao.getAllPost();
                String ten = or.getDiaChiNhan();
                String[] tempArray;
                tempArray = ten.split(",");
                Post postTen = dao.getBuuCucDen(tempArray[0], tempArray[1], tempArray[2]);
                dc = p.diaChiPost();
            } else {
                tt = "Đã Giao Thành Công";
                dc = or.getDiaChiNhan();
            }
        } catch (Exception ex) {
            Logger.getLogger(Journal.class.getName()).log(Level.SEVERE, null, ex);
        }
        SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
        String dateString = format.format(thoiGian);
        return dateString + " : " + tt + " tại " + dc + ".";
    }

}
