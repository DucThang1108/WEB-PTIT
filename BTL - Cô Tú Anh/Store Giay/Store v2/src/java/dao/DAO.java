/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Product;
import entity.category;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author LE VIET TRUNG
 */
public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Product> get5Product(){
        List<Product> list = new ArrayList<>();
        String query = "SELECT TOP 5 * FROM product\n" +
                      "order by id desc";
        try {
            conn = new DBContext().getConnection();             //Mở kết nối với SQL
            ps = conn.prepareStatement(query);            //Ném câu lệnh SELECT * FROM product sang query SQL  
            rs = ps.executeQuery();
            
            while (rs.next()) {                
                list.add(new Product(rs.getInt(1), 
                                    rs.getString(2), 
                                    rs.getString(3), 
                                    rs.getInt(4), 
                                    rs.getString(5), 
                                    rs.getString(6), 
                                    rs.getString(7), 
                                    rs.getDouble(8), 
                                    rs.getString(9)));
            }
        } catch (Exception e) {
        }
        return list;
       
    }
    
    
    public List<category> getAllCategory(){
        List<category> list = new ArrayList<>();
        String query = "SELECT * FROM category";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
                list.add(new category(rs.getInt(1), 
                                      rs.getString(2)));
            }
        } catch (Exception e) {
        }
        
        return list;
    }
    
    
    public List<Product> getAllProductBycateID(String cid){    //Do SQL vừa nhận kiểu String vừa nhận kiểu Int nên chọn String cho đỡ phải ép kiểu
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM product\n" +
                       "WHERE cateID = ?";
        
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
                list.add(new Product(rs.getInt(1), 
                                    rs.getString(2), 
                                    rs.getString(3), 
                                    rs.getInt(4), 
                                    rs.getString(5), 
                                    rs.getString(6), 
                                    rs.getString(7), 
                                    rs.getDouble(8), 
                                    rs.getString(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    
    public List<Product> getAllProductBoyNew(String loaiHang, String cateID){
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM product\n" +
                       "WHERE loaiHang = ? and cateID = ?\n" +
                       "order by id desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, loaiHang);
            ps.setString(2, cateID);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
                list.add(new Product(rs.getInt(1), 
                                    rs.getString(2), 
                                    rs.getString(3), 
                                    rs.getInt(4), 
                                    rs.getString(5), 
                                    rs.getString(6), 
                                    rs.getString(7), 
                                    rs.getDouble(8), 
                                    rs.getString(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    
    public List<Product> getProductGirlNew(String loaiHang, String cateID){
        List<Product> list = new ArrayList<>();
        
        String query = "SELECT * FROM product\n" +
                        "WHERE loaiHang = ? and cateID = ?\n" +
                        "order by id desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, loaiHang);
            ps.setString(2, cateID);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
                list.add(new Product(rs.getInt(1), 
                                        rs.getString(2), 
                                        rs.getString(3), 
                                        rs.getInt(4), 
                                        rs.getString(5), 
                                        rs.getString(6), 
                                        rs.getString(7), 
                                        rs.getDouble(8), 
                                        rs.getString(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> getAllProductOriginals(String loaiHang, String loaiSP, String cateID){
        List<Product> list = new ArrayList<>();
        String query = "  SELECT * from product\n" +
                       "  WHERE loaiHang = ? and loaiSP = ? and cateID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, loaiHang);
            ps.setString(2, loaiSP);
            ps.setString(3, cateID);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
                list.add(new Product(rs.getInt(1), 
                                    rs.getString(2), 
                                    rs.getString(3), 
                                    rs.getInt(4), 
                                    rs.getString(5), 
                                    rs.getString(6), 
                                    rs.getString(7), 
                                    rs.getDouble(8), 
                                    rs.getString(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> getAllProductBongDa(String loaiHang, String loaiSP, String cateID){
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM product\n" +
                        "WHERE loaiHang = ? and loaiSP = ? and cateID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, loaiHang);
            ps.setString(2, loaiSP);
            ps.setString(3, cateID);
            
            rs = ps.executeQuery();
            
            while (rs.next()) {                
                list.add(new Product(rs.getInt(1), 
                                    rs.getString(2), 
                                    rs.getString(3), 
                                    rs.getInt(4), 
                                    rs.getString(5), 
                                    rs.getString(6), 
                                    rs.getString(7), 
                                    rs.getDouble(8), 
                                    rs.getString(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> getAllProductChayBo(String loaiHang, String loaiSP, String cateID){
        List<Product> list = new ArrayList<>();
        
        String query = "SELECT * FROM product\n" +
                        "WHERE loaiHang = ? and loaiSP = ? and cateID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, loaiHang);
            ps.setString(2, loaiSP);
            ps.setString(3, cateID);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
                list.add(new Product(rs.getInt(1), 
                                    rs.getString(2), 
                                    rs.getString(3), 
                                    rs.getInt(4), 
                                    rs.getString(5), 
                                    rs.getString(6), 
                                    rs.getString(7), 
                                    rs.getInt(8),
                                    rs.getString(9)));
            }
        } catch (Exception e) {
        }
        
        return list;
    }
    
    public List<Product> searchBoyNew(String loaiHang, String cateID, String txtSearch){
        List<Product> list = new ArrayList<>();
        String query = "Select * from product\n" +
                        "where loaiHang = ? and cateID = ? and [name] like ? \n" +
                        "order by id desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, loaiHang);
            ps.setString(2, cateID);
            ps.setString(3, txtSearch);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
                list.add(new Product(rs.getInt(1), 
                                    rs.getString(2), 
                                    rs.getString(3), 
                                    rs.getInt(4), 
                                    rs.getString(5), 
                                    rs.getString(6), 
                                    rs.getString(7), 
                                    rs.getDouble(8), 
                                    rs.getString(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    
    public List<Product> searchByname(String txtSearch){
        List<Product> list = new ArrayList<>();
        String query = "Select * from product\n" +
                        "where [name] like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            
            ps.setString(1, "%" + txtSearch + "%");
            
            rs = ps.executeQuery();
            
            while (rs.next()) {                
                list.add(new Product(rs.getInt(1), 
                                    rs.getString(2), 
                                    rs.getString(3), 
                                    rs.getInt(4), 
                                    rs.getString(5), 
                                    rs.getString(6), 
                                    rs.getString(7), 
                                    rs.getDouble(8), 
                                    rs.getString(9)));
            }
        } catch (Exception e) {
        }
        
        return list;
    }
    
    public Product getAllProductByID(String id){    
        String query = "SELECT * FROM product\n" +
                        "WHERE id = ?";
        
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
                return new Product(rs.getInt(1), 
                                    rs.getString(2), 
                                    rs.getString(3), 
                                    rs.getInt(4), 
                                    rs.getString(5), 
                                    rs.getString(6), 
                                    rs.getString(7), 
                                    rs.getDouble(8), 
                                    rs.getString(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    
    public Product getCategoryByID(String cid){    //Do SQL vừa nhận kiểu String vừa nhận kiểu Int nên chọn String cho đỡ phải ép kiểu
        String query = "SELECT * FROM category\n" +
                        "where cid = 1;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
                return new Product(rs.getInt(1), 
                                    rs.getString(2), 
                                    rs.getString(3), 
                                    rs.getInt(4), 
                                    rs.getString(5), 
                                    rs.getString(6), 
                                    rs.getString(7), 
                                    rs.getDouble(8), 
                                    rs.getString(9));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<category> list = dao.getAllCategory();

        String cid = "1";
        
        Product p = dao.getCategoryByID(cid);
        System.out.println(p);
    }   
}
