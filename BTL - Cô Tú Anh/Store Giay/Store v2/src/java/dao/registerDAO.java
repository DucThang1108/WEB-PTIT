/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Account1;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author LE VIET TRUNG
 */

public class registerDAO {
    
    Connection conn = null;          //Kết nối với SQL
    PreparedStatement ps = null;     //Ném câu lệnh query vào trong SQL
    ResultSet rs = null;             // Trả về kết quả
    
    public Account checkAcount(String user){
        String query = "select * from Account1 where username = ?";
        try {
            conn = new DBContext().getConnection();             //Kết nối với SQL   Trung123
            ps = conn.prepareStatement(query);      
            ps.setString(1, user); //Truyền user vào chỗ ?  
            
            rs = ps.executeQuery(); // Hàm chạy SQL
            
            while(rs.next()){
                return new Account(rs.getString(1), 
                                   rs.getString(2), 
                                   rs.getString(3), 
                                   rs.getString(4), 
                                   rs.getInt(5),  
                                   rs.getInt(6), 
                                   rs.getInt(7));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    
    public void insertAccount1 (String name, String SDT, String Email, String pass){
        String query = "INSERT INTO Account1 (username, SDT, Email, pass) VALUES (?, ?, ?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, SDT);
            ps.setString(3, Email);
            ps.setString(4, pass);
            
            ps.executeUpdate();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
