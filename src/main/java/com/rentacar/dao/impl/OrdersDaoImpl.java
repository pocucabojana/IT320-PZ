/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rentacar.dao.impl;

import com.rentacar.model.Customer;
import com.rentacar.model.Orders;
import java.util.Date;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.rentacar.dao.OrdersDao;
import java.util.List;
import org.hibernate.Query;

/**
 *
 * @author BojanaPocuca
 */
@Repository
@Transactional
public class OrdersDaoImpl implements OrdersDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Orders addOrders(Orders orders) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(orders);
        session.flush();
        return orders;

    }

    @Override
    public Orders getOrderById(int ordersId) {
        Session session = sessionFactory.getCurrentSession();
        Orders orderss = (Orders) session.get(Orders.class, ordersId);
        session.flush();

        return orderss;
    }

    @Override
    public List<Orders> getAllOrders() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Orders");
        List<Orders> ordersList = query.list();

        return ordersList;
    }

}
