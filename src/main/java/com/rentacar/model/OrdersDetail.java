/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rentacar.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author BojanaPocuca
 */

@Entity
public class OrdersDetail {

//    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private int ordersDetailId;

    private int productId;

    private int ordersId;

    private double price;
  

    public OrdersDetail() {
    }

    public OrdersDetail(int ordersDetailId, int productId, int ordersId, double price) {
        this.ordersDetailId = ordersDetailId;
        this.productId = productId;
        this.ordersId = ordersId;
        this.price = price;
       
    }

    public int getOrdersDetailId() {
        return ordersDetailId;
    }

    public void setOrdersDetailId(int ordersDetailId) {
        this.ordersDetailId = ordersDetailId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getOrdersId() {
        return ordersId;
    }

    public void setOrdersId(int ordersId) {
        this.ordersId = ordersId;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

 
    @Override
    public String toString() {
        return "OrdersDetail{" + "ordersDetailId=" + ordersDetailId + ", productId=" + productId + ", ordersId=" + ordersId + ", price=" + price + '}';
    }

 

}
