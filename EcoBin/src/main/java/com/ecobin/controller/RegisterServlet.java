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

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String name =
                request.getParameter("name");

        String email =
                request.getParameter("email");

        String password =
                request.getParameter("password");

        String role =
                request.getParameter("role");

        try {

            Connection con =
                    DBConnection.getConnection();

            if(con == null){

                response.getWriter().println(
                        "Database Connection Failed");

                return;
            }

            String query =
                    "INSERT INTO users(name,email,password,role) VALUES(?,?,?,?)";

            PreparedStatement ps =
                    con.prepareStatement(query);

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, role);

            int rows =
                    ps.executeUpdate();

            if(rows > 0){

                response.sendRedirect(
                        "login.jsp");

            }else{

                response.getWriter().println(
                        "Registration Failed");

            }

        } catch(Exception e){

            e.printStackTrace();

            response.getWriter().println(
                    "Error : " + e.getMessage());

        }

    }

}