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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdbc.JDBCUtility;

/**
 *
 * @author Farah Athirah
 */
@WebServlet(name = "userRegisterServlet", urlPatterns = {"/userRegisterServlet"})
public class userRegisterServlet extends HttpServlet {
    
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
    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        init();
        //GET data form 
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
       
        
         try{
                String sql = "SELECT * FROM user WHERE username = ? ";
                PreparedStatement as = con.prepareStatement (sql);
                as.setString (1, username);           
                ResultSet rs = as.executeQuery();
                if(rs.next())
                    {
                        request.setAttribute("errorMessage", "Nama pengguna telah digunakan sila isi semula");
                        request.getRequestDispatcher("/registration_form.jsp").forward(request, response);
                    }
                else{ 
                    String sqlInsert = "INSERT INTO user(name, email, username, password) VALUES(?,?,?,?)";
                    as = con.prepareStatement (sqlInsert);
                    as.setString (1, name);
                    as.setString (2, email);
                    as.setString (3, username);
                    as.setString (4, password);

                    as.executeUpdate();
                    as.close();
                }
                rs.close();
                                    
         }
        catch(SQLException ex){
            throw new ServletException(ex);
        }finally{
             
              request.setAttribute("successMessage", "Berjaya daftar"); 
              request.getRequestDispatcher("/login.jsp").forward(request, response); 
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
        processRequest(request, response);
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