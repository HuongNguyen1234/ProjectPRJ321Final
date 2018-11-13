/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.entity.Order;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author huong karatedo
 */
public class ListOrderController {
    private List<Order> listOrder;

    public ListOrderController() {
       listOrder= new ArrayList<>();
    }
    public void addOrder(Order o){
        listOrder.add(o);
    }
    public void deleteOrder(Order o){
        listOrder.remove(o);
    }

    public List<Order> getListOrder() {
        return listOrder;
    }

    public void setListOrder(List<Order> listOrder) {
        this.listOrder = listOrder;
    }
    
}
