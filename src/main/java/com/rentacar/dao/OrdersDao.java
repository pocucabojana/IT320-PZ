/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rentacar.dao;

import com.rentacar.model.Orders;
import java.util.List;

/**
 *
 * @author BojanaPocuca
 */
public interface OrdersDao {

    public Orders addOrders(Orders orders);

    public Orders getOrderById(int ordersId);

    public List<Orders> getAllOrders();
}
