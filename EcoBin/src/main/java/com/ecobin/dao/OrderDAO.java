package com.ecobin.dao;

import com.ecobin.model.Order;
import com.ecobin.utils.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class OrderDAO {

    public boolean placeOrder(Order order) {

        boolean status = false;

        try {

            Connection con =
                    DBConnection.getConnection();

            String query =
                    "INSERT INTO orders(buyer_id,total,payment_method) VALUES(?,?,?)";

            PreparedStatement ps =
                    con.prepareStatement(query);

            ps.setInt(1,
                    order.getBuyerId());

            ps.setDouble(2,
                    order.getTotal());

            ps.setString(3,
                    order.getPaymentMethod());

            int rows =
                    ps.executeUpdate();

            if(rows > 0) {

                status = true;

            }

        } catch(Exception e) {

            e.printStackTrace();

        }

        return status;

    }

}