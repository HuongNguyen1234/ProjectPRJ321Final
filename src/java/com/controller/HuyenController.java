/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.entity.Huyen;
import java.util.List;

/**
 *
 * @author huong karatedo
 */
public class HuyenController {
    List<Huyen> listHuyen;
    
    public HuyenController(List<Huyen> listHuyen) {
        this.listHuyen = listHuyen;
    }

    public List<Huyen> getListHuyen() {
        return listHuyen;
    }

    public void setListHuyen(List<Huyen> listHuyen) {
        this.listHuyen = listHuyen;
    }
    
}
