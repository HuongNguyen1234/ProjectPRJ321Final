/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.entity.Mien;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author huong karatedo
 */
public class MienController {
    List<Mien> mien;

    public MienController() {
        this.mien = new ArrayList<>();
    }

    public List<Mien> getMien() {
        return mien;
    }

    public void setMien(List<Mien> mien) {
        this.mien = mien;
    }
    
    
}
