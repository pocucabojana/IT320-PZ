/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rentacar.service;


import com.rentacar.model.Orders;
import java.util.List;

/**
 *
 * @author BojanaPocuca
 */
public interface OrdersService {

    public Orders addOrders(Orders orders);

    public Orders getOrderById(int id);

    public List<Orders> getAllOrders();

}
