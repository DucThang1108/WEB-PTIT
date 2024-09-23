/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Context.DBContext;
import entity.SinhVien;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author DUC THANG
 */
public class DAO {
    Connection conn = null;  // kết nối đến csdl
    PreparedStatement ps = null;  // thực thi câu lệnh sql
    ResultSet rs = null;  // lưu kết quả của một truy vấn

    public void InsertSV(String masv, String hodem, String tensv, String telsv, String emailsv){
        String query = "Insert into qlsv(masv, hodem, tensv, telsv, emailsv) values (?, ?, ?, ?, ?);";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);  // chuẩn bị câu lệnh thực thi

            ps.setString(1, masv);
            ps.setString(2, hodem);
            ps.setString(3, tensv);
            ps.setString(4, telsv);
            ps.setString(5, emailsv);

            ps.executeUpdate();

        } catch (Exception e) {
        }
    }
    public List<SinhVien> getAllSV(){
        List<SinhVien> list = new ArrayList<>();  // tạo danh sách rỗng để luu đối tượng sv
        String query = "select * from qlsv";

        try {
            conn = new DBContext().getConnection();  // tạo kết nối csdl
            ps = conn.prepareStatement(query);   
            rs = ps.executeQuery();  // Thực thi truy vấn SQL và lấy kết quả trả về vào resultset

            while (rs.next()) {
                list.add(new SinhVien(rs.getString(1), 
                                        rs.getString(2), 
                                        rs.getString(3), 
                                        rs.getString(4), 
                                        rs.getString(5), 
                                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public void deleteSV(String id){
        String query =" delete from QLSV where id = ? ";
        
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
    }
    
    public SinhVien loadSV(String id){
        String query = "Select * from QLSV where id = ?";
         try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            
            while(rs.next()){
                 return new SinhVien(rs.getString(1),
                                     rs.getString(2),
                                     rs.getString(3),
                                     rs.getString(4),
                                     rs.getString(5),
                                     rs.getString(6));
             }
                
        } catch (Exception e) {
        }
        return null;
    }
    
    public void UpdateSV( String masv, String hodem, String tensv, String telsv, String emailsv,String id){
        String query = "update qlsv set \n" 
                + "masv = ?,\n"
                + "hodem = ?,\n"
                + "tensv = ?,\n"
                + "telsv = ?,\n"
                + "emailsv = ?\n"
                + "where id =?";
        
         try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);           
            ps.setString(1, masv);
            ps.setString(2, hodem);
            ps.setString(3, tensv);
            ps.setString(4, telsv);
            ps.setString(5, emailsv);
            ps.setString(6, id);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }       
                
    }
}
