/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author LE VIET TRUNG
 */

//Tạo kết nối với SQL và thực hiện câu lệnh Query
public class LoginDAO {
    Connection conn = null; // mở kết nối đến SQL SERVER
    PreparedStatement ps = null; // Ném câu lệnh từ SQL sang Netbean
    ResultSet rs = null; // Nhận kết quả trả về
    
    public Account checkLogin(String user, String pass){
        String query = "select * from Account1 where username = ? and pass = ? ";
        
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user); //Truyền user vào chỗ ?
            ps.setString(2, pass); //Truyền pass vào chỗ ?
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
    
    public static void main(String[] args) {
        LoginDAO dao = new LoginDAO();
        String username = "Mylinh"; 
        String password = "130802"; 

        Account account = dao.checkLogin(username, password);
        if (account != null) {
            System.out.println("Login successful!");
            System.out.println(account);
        } else {
            System.out.println("Login failed!");
        }
    }
}
