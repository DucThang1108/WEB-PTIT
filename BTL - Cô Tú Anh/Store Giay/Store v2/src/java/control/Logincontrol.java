/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import dao.LoginDAO;
import entity.Account;
import entity.Product;
import entity.category;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author LE VIET TRUNG
 */
@WebServlet(name = "Logincontrol", urlPatterns = {"/Logincontrol"})
public class Logincontrol extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    //Dùng servlet
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String user = request.getParameter("Username"); //Phần tên của name="" bên Login.jsp
        String pass = request.getParameter("Password"); //Phần tên của name="" bên Login.jsp
        
        LoginDAO loginDAO = new LoginDAO();
        Account a = loginDAO.checkLogin(user, pass); //Chuyền hàm checkLogin vào Servlet
        
        if(a == null){
//                response.sendRedirect("Login.jsp");

            String errorMessage = "Tài khoản hoặc mật khẩu không đúng !";
            request.setAttribute("error", errorMessage);
            request.getRequestDispatcher("Login.jsp").forward(request, response);
       
        }else {
//          response.sendRedirect("Home.jsp");
            //Lưu account lên cookie
//            Cookie u = new Cookie("userC", user);
//            Cookie p = new Cookie("passC", pass);
//            u.setMaxAge(60);
//            p.setMaxAge(60);
//            response.addCookie(u); 
//            response.addCookie(p);
                
                
                
//Xuất hiện 5 SP mới
            DAO dao = new DAO();
            List<Product> listP5 = dao.get5Product();
            List<category> listC = dao.getAllCategory();
            
            //Đẩy acc lên session
            HttpSession session = request.getSession();
            session.setAttribute("acc", a);
            session.setMaxInactiveInterval(10);

            //b2: set data to jsp
            request.setAttribute("listP5", listP5);    
            request.setAttribute("listC", listC);     

            request.getRequestDispatcher("Home1.jsp").forward(request, response);

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
          //b1: get user, pass from cookie
          Cookie arr[] = request.getCookies();
          for (Cookie o : arr){
              if (o.getName().equals("userC")) {
                  request.setAttribute("username", o.getValue());
              }
              if (o.getName().equals("passC")) {
                  request.setAttribute("password", o.getValue());
              }
          }
          //b2: set user, pass to login form
          
        request.getRequestDispatcher("Login.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
