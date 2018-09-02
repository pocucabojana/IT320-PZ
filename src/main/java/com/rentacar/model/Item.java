/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rentacar.model;
import java.util.Date;


/**
 *
 * @author BojanaPocuca
 */
public class Item {

    private Product product;
    private int qunatity;
    private Date dateFrom;
    private Date dateTo;

    public Item() {
        super();
    }

    public Item(Product product, int qunatity, Date dateFrom, Date dateTo) {
        super();
        this.product = product;
        this.qunatity = qunatity;
        this.dateFrom = new Date();
        this.dateTo = new Date();   
    }

    public Item(Product product, int qunatity) {
        super();
        this.product = product;
        this.qunatity = qunatity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQunatity() {
        return qunatity;
    }

    public void setQunatity(int qunatity) {
        this.qunatity = qunatity;
    }

    public Date getDateFrom() {
        return dateFrom;
    }

    public void setDateFrom(Date dateFrom) {
        this.dateFrom = dateFrom;
    }

    public Date getDateTo() {
        return dateTo;
    }

    public void setDateTo(Date dateTo) {
        this.dateFrom = dateTo;
    }
    
}
