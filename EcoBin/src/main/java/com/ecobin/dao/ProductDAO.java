package com.ecobin.dao;

import com.ecobin.model.Product;
import com.ecobin.utils.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ProductDAO {

    public boolean addProduct(Product product) {

        boolean status = false;

        try {

            Connection con =
                    DBConnection.getConnection();

            String query =
                    "INSERT INTO products(seller_id,product_name,category,description,price,quantity) VALUES(?,?,?,?,?,?)";

            PreparedStatement ps =
                    con.prepareStatement(query);

            ps.setInt(1,
                    product.getSellerId());

            ps.setString(2,
                    product.getProductName());

            ps.setString(3,
                    product.getCategory());

            ps.setString(4,
                    product.getDescription());

            ps.setDouble(5,
                    product.getPrice());

            ps.setInt(6,
                    product.getQuantity());

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