package com.ecobin.controller;

import com.ecobin.utils.DBConnection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addProduct")
public class ProductServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        try {

            Connection con =
                    DBConnection.getConnection();

            String query =
                    "INSERT INTO products(seller_id,product_name,category,description,price,quantity) VALUES(?,?,?,?,?,?)";

            PreparedStatement ps =
                    con.prepareStatement(query);

            ps.setInt(1,
                    Integer.parseInt(
                            request.getParameter("seller_id")));

            ps.setString(2,
                    request.getParameter("product_name"));

            ps.setString(3,
                    request.getParameter("category"));

            ps.setString(4,
                    request.getParameter("description"));

            ps.setDouble(5,
                    Double.parseDouble(
                            request.getParameter("price")));

            ps.setInt(6,
                    Integer.parseInt(
                            request.getParameter("quantity")));

            ps.executeUpdate();

            response.sendRedirect(
                    "seller/manageProducts.jsp");

        } catch(Exception e) {

            e.printStackTrace();

        }

    }

}