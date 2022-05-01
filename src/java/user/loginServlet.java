/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdbc.JDBCUtility;

/**
 *
 * @author User
 */
@WebServlet(name = "loginServlet", urlPatterns = {"/loginServlet"})
public class loginServlet extends HttpServlet {
    
    private JDBCUtility jdbcUtility;
    private Connection con;
    
    @Override
    public void init() throws ServletException
    {
        String driver = "com.mysql.jdbc.Driver";

        String dbName = "webapplicationad";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String password = "";

        jdbcUtility = new JDBCUtility(driver,
                                      url,
                                      userName,
                                      password);

        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
    }  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException, SQLException {
        init();

        String choice = request.getParameter("submit");
        
        Statement stmt = con.createStatement();
       
        try{
             
             
            switch (choice) {
                case "Log Masuk":
                    {    
                        HttpSession session = request.getSession();
                        String username = request.getParameter("username");
                        String pswd = request.getParameter("password");
                     
                        ResultSet rs = stmt.executeQuery("SELECT userID FROM user where user.username ='"+ username +"'AND user.password='"+pswd+"'"); 
                        if (rs.next()) {
                            int id=rs.getInt("userID");                            
                            session.setAttribute("userID",id);
                            response.sendRedirect("index.jsp");
                        } else {
                            request.setAttribute("errorMessage", " kata laluan atau nama pengguna tidak benar");
                            request.getRequestDispatcher("/login.jsp").forward(request, response);
                        }
                      break;  
                    }
                case "forgotpassw":
                    {   
                        
                         String email = request.getParameter("email");
                       
                        try{                

                            String sql = "SELECT * FROM user WHERE email = ? ";
                            PreparedStatement as = con.prepareStatement (sql);
                            as.setString (1, email);           
                            ResultSet rs = as.executeQuery();         
                            if(rs.next())        
                            {
                                request.setAttribute("email", rs.getString("email"));            
                                request.getRequestDispatcher("/forgot_password.jsp").forward(request, response);            
                            }        
                             else{        
                                request.setAttribute("errorMessage", "Emel tidak didaftar sila isi emel yang benar");            
                                request.getRequestDispatcher("/login.jsp").forward(request, response);         
                            }
                        }
                        catch(SQLException ex){
                                ex.printStackTrace();        
                        }
                        break;
                    }
                case "Tukar Kata Laluan":  
                    {
                        String email = request.getParameter("email");
                        String pswd = request.getParameter("password");
                        String successMessage="";
                      try{         
                            String inSql = "SELECT * FROM user WHERE email= ? ";
                            PreparedStatement pstmt = con.prepareStatement(inSql);
                            pstmt.setString (1, email);  
                            ResultSet result = pstmt.executeQuery();
     
                            if(result.next()){
                                String sqlUpdate = "UPDATE user set password = ? WHERE email =?";
                                PreparedStatement pst = con.prepareStatement(sqlUpdate);
                            
                                pst.setString(1, pswd);
                                pst.setString(2, email);
                                pst.executeUpdate();
                                successMessage= "Kata Laluan berjaya diubah";
                            }
                            else{
                                successMessage= "Kata Laluan tidak berjaya diubah";
                            }
                        }catch(SQLException ex){
                            ex.printStackTrace();        
                        }finally {
                            request.setAttribute("successMessage",successMessage);
                            request.getRequestDispatcher("/login.jsp").forward(request, response);   
                        }
                   break;
                    }
                    
                default: 
                    response.sendRedirect (request.getContextPath() + "/index.jsp"); 
                break;
            }
        }catch (Exception e2){
            e2.printStackTrace();
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(loginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(loginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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