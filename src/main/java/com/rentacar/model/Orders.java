/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rentacar.model;

import java.sql.Time;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 *
 * @author BojanaPocuca
 */
@Entity
public class Orders {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ordersId;

    private String username;

    private String ordersName;

    private Date dateCreation;
    
    private Time timeCreation;

    public String dateFrom;
    
    public String dateTo;

    public Orders() {
    }

    public Orders(int ordersId, String username, String ordersName, Date dateCreation, Time timeCreation, String dateFrom, String dateTo) {
        this.ordersId = ordersId;
        this.username = username;
        this.ordersName = ordersName;
        this.dateCreation = dateCreation;
        this.timeCreation = timeCreation;
        this.dateFrom = dateFrom;
        this.dateTo = dateTo;
    }

    public int getOrdersId() {
        return ordersId;
    }

    public void setOrdersId(int ordersId) {
        this.ordersId = ordersId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getOrdersName() {
        return ordersName;
    }

    public void setOrdersName(String ordersName) {
        this.ordersName = ordersName;
    }

    public Date getDateCreation() {
        return dateCreation;
    }

    public void setDateCreation(Date dateCreation) {
        this.dateCreation = dateCreation;
    }

    
    public String getDateFrom() {
        return dateFrom;
    }

    public void setDateFrom(String dateFrom) {
        this.dateFrom = dateFrom;
    }

    public String getDateTo() {
        return dateTo;
    }

    public void setDateTo(String dateTo) {
        this.dateTo = dateTo;
    }

    public Time getTimeCreation() {
        return timeCreation;
    }

    public void setTimeCreation(Time timeCreation) {
        this.timeCreation = timeCreation;
    }

    @Override
    public String toString() {
        return "Orders{" + "ordersId=" + ordersId + ", username=" + username + ", ordersName=" + ordersName + ", dateCreation=" + dateCreation + ", timeCreation=" + timeCreation + ", dateFrom=" + dateFrom + ", dateTo=" + dateTo + '}';
    }
    
    
}
