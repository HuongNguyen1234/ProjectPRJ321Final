/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.entity.Service;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author huong karatedo
 */
public class ListServiceController {
    List <Service> listService;

    public ListServiceController( ) {
    listService= new ArrayList<>();
    }

    public List<Service> getListService() {
        return listService;
    }

    public void setListService(List<Service> listService) {
        this.listService = listService;
    }
    
}
