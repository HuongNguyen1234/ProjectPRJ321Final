/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.entity.Staff;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author huong karatedo
 */
public class ManagementController {
    
    private List<Staff> staff;

    public ManagementController() {
    staff= new ArrayList<>();
    }
    public void addStaff(Staff s){
        staff.add(s);
    }
    public void deleteStaff(Staff s){
        staff.remove(s);
    }
    public List<Staff> getStaff() {
        return staff;
    }

    public void setStaff(List<Staff> staff) {
        this.staff = staff;
    }

  
    
}
