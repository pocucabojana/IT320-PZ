/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rentacar.controller.admin;

import com.rentacar.model.Customer;
import com.rentacar.model.Orders;
import com.rentacar.model.Product;

import com.rentacar.service.CustomerService;
import com.rentacar.service.OrdersService;
import com.rentacar.service.ProductService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author BojanaPocuca
 */
@Controller
@RequestMapping("/admin")
public class AdminHome {

    @Autowired
    private ProductService productService;

    @Autowired
    private CustomerService customerService;
    
    
    @Autowired
    private OrdersService ordersService;

    
    
    @RequestMapping
    public String adminPage() {
        return "admin";
    }

    @RequestMapping("/productInventory")
    public String productInventory(Model model) {
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);

        return "productInventory";
    }

    @RequestMapping("/customer")
    public String customerManagerment(Model model) {

        List<Customer> customerList = customerService.getAllCustomers();
        model.addAttribute("customerList", customerList);

        return "customerManagement";
    }
    
    @RequestMapping("/rented")
    public String rented(Model model) {

        List<Orders> ordersList = ordersService.getAllOrders();
        model.addAttribute("ordersList", ordersList);

        return "rented";
    }
}
