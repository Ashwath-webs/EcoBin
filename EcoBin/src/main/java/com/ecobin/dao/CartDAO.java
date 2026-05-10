package com.ecobin.dao;

import com.ecobin.model.Cart;
import com.ecobin.utils.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CartDAO {

    public boolean addToCart(Cart cart) {

        boolean status = false;

        try {

            Connection con =
                    DBConnection.getConnection();

            String query =
                    "INSERT INTO cart(user_id, product_id, quantity) VALUES(?,?,?)";

            PreparedStatement ps =
                    con.prepareStatement(query);

            ps.setInt(1,
                    cart.getUserId());

            ps.setInt(2,
                    cart.getProductId());

            ps.setInt(3,
                    cart.getQuantity());

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