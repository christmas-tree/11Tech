
package controller;

import beans.Category;
import beans.Product;
import connection.ConnectionUtils;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utils.DBUtils;

@WebServlet(name = "HomeServlet", urlPatterns = {"/"})
public class HomeServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
    List<Category> allCategories = null;
    List<Product> featuredProducts = null;
    List<Product> saleProducts = null;    
    List<Product> ratedProducts = null;   
    List<Product> newFeaturedProducts = null;   
    List<Product> newSmartphoneTabletProducts = null;
    List<Product> newLaptopComputerProducts = null; 
    List<Product> top20Products = null;
    List<Product> topAudioVideoProducts = null;
    List<Product> topLaptopComputerProducts = null;
    Connection conn = null;
   
   public HomeServlet() {
       super();
   }
    
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException { 
        try {
            conn = ConnectionUtils.getConnection();
        } catch (SQLException | ClassNotFoundException | NamingException ex) {
            ex.printStackTrace();
        }       
        try {
            allCategories = DBUtils.allCategories(conn);
            featuredProducts = DBUtils.featuredProducts(conn);
            saleProducts = DBUtils.saleProducts(conn);
            ratedProducts = DBUtils.ratedProducts(conn);
            newFeaturedProducts = DBUtils.newFeaturedProducts(conn);
            newSmartphoneTabletProducts = DBUtils.newSmartphoneTabletProducts(conn);
            newLaptopComputerProducts = DBUtils.newLaptopComputerProducts(conn);
            top20Products = DBUtils.top20Products(conn);
            topAudioVideoProducts = DBUtils.topAudioVideoProducts(conn);
            topLaptopComputerProducts = DBUtils.topLaptopComputerProducts(conn);
        } catch(SQLException ex) {
            ex.printStackTrace();
        }
        request.setAttribute("allCategories", allCategories);
        request.setAttribute("featuredProducts", featuredProducts);
        request.setAttribute("saleProducts", saleProducts);
        request.setAttribute("ratedProducts", ratedProducts);
        request.setAttribute("newFeaturedProducts", newFeaturedProducts);
        request.setAttribute("newSmartphoneTabletProducts",newSmartphoneTabletProducts);
        request.setAttribute("newLaptopComputerProducts",newLaptopComputerProducts);   
        request.setAttribute("top20Products",top20Products);
        request.setAttribute("topAudioVideoProducts",topAudioVideoProducts);
        request.setAttribute("topLaptopComputerProducts",topLaptopComputerProducts);
        
        RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/index.jsp");        
        dispatcher.forward(request, response);
   }    
}
