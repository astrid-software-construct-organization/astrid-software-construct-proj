/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import bean.user;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import jdbc.JDBCUtility;

/**
 *
 * @author User
 */
@WebServlet(name = "updateProfileServlet", urlPatterns = {"/updateProfileServlet"})
public class updateProfileServlet extends HttpServlet {
 
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
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        init();
 
        HttpSession session = request.getSession();
        int userid = (Integer)session.getAttribute("userID");
        String name = request.getParameter("name");
        String email = request.getParameter ("email");
        String username = request.getParameter ("username");
        String pswd = request.getParameter ("password");
        String successMessage="";
        try{         
            String inSql = "SELECT * FROM user WHERE userID='"+ userid +"'";
            PreparedStatement stmt = con.prepareStatement(inSql);
            ResultSet result = stmt.executeQuery();
     
                if(result.next()){
                    String sqlUpdate = "UPDATE user SET name = ?, email = ?, username = ?, password = ? WHERE userID =?";

                    PreparedStatement pst = con.prepareStatement(sqlUpdate);
                    pst.setString(1,name);
                    pst.setString(2, email);
                    pst.setString(3, username);
                    pst.setString(4, pswd);

                    pst.setInt(5, userid);

                    boolean row =pst.executeUpdate()>0;
                    successMessage= "Data berjaya diubah";
                }
                else{
                    successMessage= "Data tidak berjaya diubah";
                }
            }catch(SQLException ex){
                successMessage= "Data tidak berjaya disimpan";
                ex.printStackTrace();        
            }finally {
            if (con != null) {
                // closes the database connection
                try {
                    con.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
                session.setAttribute("successMessage",successMessage);
                response.sendRedirect (request.getContextPath() + "/userViewServlet");   
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
