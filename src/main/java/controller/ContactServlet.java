/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet(name = "ContactServlet",
        loadOnStartup = 1,
        urlPatterns = {"/contact"})

public class ContactServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        boolean isSent = false;
        request.setAttribute("isSent", isSent);

        try {
            request.getRequestDispatcher("contact.jsp").forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        Long phone = Long.parseLong(request.getParameter("phone"));
        String message = request.getParameter("message");
        
        boolean result = false;
        
        try {
            Context initContext = new InitialContext();
            Context envContext = (Context) initContext.lookup("java:comp/env");
            DataSource ds = (DataSource) envContext.lookup("jdbc/btl_ecommerce");
            Connection conn = ds.getConnection();
            PreparedStatement statement = conn.prepareStatement("INSERT INTO contact(name, email, phone, message) VALUES (?, ?, ?, ?)");
            
            statement.setNString(1, name);
            statement.setNString(2, email);
            statement.setLong(3, phone);
            statement.setNString(4, name);
            
            result = (statement.executeUpdate() > 0);

        } catch (NamingException | SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("isSent", result);
        
        try {
            request.getRequestDispatcher("contact.jsp").forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
