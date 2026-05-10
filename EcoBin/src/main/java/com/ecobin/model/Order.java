package com.ecobin.model;

public class Order {

    private int id;
    private int buyerId;
    private double total;
    private String paymentMethod;

    public Order() {

    }

    public int getId() {

        return id;

    }

    public void setId(int id) {

        this.id = id;

    }

    public int getBuyerId() {

        return buyerId;

    }

    public void setBuyerId(int buyerId) {

        this.buyerId = buyerId;

    }

    public double getTotal() {

        return total;

    }

    public void setTotal(double total) {

        this.total = total;

    }

    public String getPaymentMethod() {

        return paymentMethod;

    }

    public void setPaymentMethod(String paymentMethod) {

        this.paymentMethod = paymentMethod;

    }

}