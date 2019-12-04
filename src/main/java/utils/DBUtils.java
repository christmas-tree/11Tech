package utils;

import beans.Category;
import beans.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DBUtils {
    public static List<Product> saleProducts(Connection conn) 
            throws SQLException {
        String sql = "Select top(19) * from product where discounted_price!=0";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<Product> list = new ArrayList<Product>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getInt("product_id"));
            product.setName(rs.getString("name"));
            product.setPrice(rs.getLong("price"));
            product.setDiscountedPrice(rs.getLong("discounted_price"));
            product.setImage(rs.getString("image"));
            product.setDetailID(rs.getInt("detail_id"));
            list.add(product);
        }
        return list;
    }  
    
    public static List<Product> featuredProducts(Connection conn) 
            throws SQLException {
        String sql = "Select top(16) * from product where featured=1";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<Product> list = new ArrayList<Product>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getInt("product_id"));
            product.setName(rs.getString("name"));
            product.setPrice(rs.getLong("price"));
            product.setDiscountedPrice(rs.getLong("discounted_price"));
            product.setImage(rs.getString("image"));
            product.setDetailID(rs.getInt("detail_id"));
            list.add(product);          
        }
        return list;
    }   
    
    public static List<Product> ratedProducts(Connection conn) 
            throws SQLException {
        String sql = "Select top(16) * from product order by rate desc";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<Product> list = new ArrayList<Product>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getInt("product_id"));
            product.setName(rs.getString("name"));
            product.setPrice(rs.getLong("price"));
            product.setDiscountedPrice(rs.getLong("discounted_price"));
            product.setImage(rs.getString("image"));
            product.setDetailID(rs.getInt("detail_id"));
            list.add(product);          
        }
        return list;
    }   

    public static List<Product> newFeaturedProducts(Connection conn) 
            throws SQLException {
        String sql = "Select top(16) * from product where featured=1 order by last_update desc";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<Product> list = new ArrayList<Product>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getInt("product_id"));
            product.setName(rs.getString("name"));
            product.setPrice(rs.getLong("price"));
            product.setDiscountedPrice(rs.getLong("discounted_price"));
            product.setImage(rs.getString("image"));
            product.setDetailID(rs.getInt("detail_id"));
            list.add(product);          
        }
        return list;
    }      
    
    public static List<Product> newSmartphoneTabletProducts(Connection conn) 
            throws SQLException {
        String sql = "Select top(16) * from product where category_id=1 order by last_update desc";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<Product> list = new ArrayList<Product>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getInt("product_id"));
            product.setName(rs.getString("name"));
            product.setPrice(rs.getLong("price"));
            product.setDiscountedPrice(rs.getLong("discounted_price"));
            product.setImage(rs.getString("image"));
            product.setDetailID(rs.getInt("detail_id"));
            list.add(product);          
        }
        return list;
    }       

    public static List<Product> newLaptopComputerProducts(Connection conn) 
            throws SQLException {
        String sql = "Select top(16) * from product where category_id=2 order by last_update desc";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<Product> list = new ArrayList<Product>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getInt("product_id"));
            product.setName(rs.getString("name"));
            product.setPrice(rs.getLong("price"));
            product.setDiscountedPrice(rs.getLong("discounted_price"));
            product.setImage(rs.getString("image"));
            product.setDetailID(rs.getInt("detail_id"));
            list.add(product);          
        }
        return list;
    } 
    
    public static List<Product> top20Products(Connection conn) 
            throws SQLException {
        String sql = "Select top(20) * from product order by sale_number desc";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<Product> list = new ArrayList<Product>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getInt("product_id"));
            product.setName(rs.getString("name"));
            product.setPrice(rs.getLong("price"));
            product.setDiscountedPrice(rs.getLong("discounted_price"));
            product.setImage(rs.getString("image"));
            product.setDetailID(rs.getInt("detail_id"));
            list.add(product);          
        }
        return list;
    } 
    
    public static List<Product> topAudioVideoProducts(Connection conn) 
            throws SQLException {
        String sql = "Select top(20) * from product where category_id=3 or category_id=4 order by sale_number desc";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<Product> list = new ArrayList<Product>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getInt("product_id"));
            product.setName(rs.getString("name"));
            product.setPrice(rs.getLong("price"));
            product.setDiscountedPrice(rs.getLong("discounted_price"));
            product.setImage(rs.getString("image"));
            product.setDetailID(rs.getInt("detail_id"));
            list.add(product);          
        }
        return list;
    }  
    
    public static List<Product> topLaptopComputerProducts(Connection conn) 
            throws SQLException {
        String sql = "Select top(20) * from product where category_id=2 order by sale_number desc";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<Product> list = new ArrayList<Product>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getInt("product_id"));
            product.setName(rs.getString("name"));
            product.setPrice(rs.getLong("price"));
            product.setDiscountedPrice(rs.getLong("discounted_price"));
            product.setImage(rs.getString("image"));
            product.setDetailID(rs.getInt("detail_id"));
            list.add(product);          
        }
        return list;
    }      
    
    public static List<Category> allCategories(Connection conn) 
            throws SQLException {
        String sql = "Select category_id, name, image from category";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<Category> list = new ArrayList<Category>();
        while (rs.next()) {
            Category category = new Category();
            category.setCategoryID(rs.getInt("category_id"));
            category.setName(rs.getString("name"));
            category.setImage(rs.getString("image"));
            list.add(category);
        }
        return list;
    }     
}
