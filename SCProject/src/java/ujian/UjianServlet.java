/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ujian;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdbc.JDBCUtility;

/**
 *
 * @author syazlyn
 */
@WebServlet(name = "UjianServlet", urlPatterns = {"/UjianServlet"})
public class UjianServlet extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
       
          response.setContentType("text/html;charset=UTF-8");
          PrintWriter out= response.getWriter();
        //USER INPUT
        int setujian = Integer.parseInt(request.getParameter("setujian")); // from hidden type setujian
        String ques1 = request.getParameter("q1");
        String ques2 = request.getParameter("q2");
        String ques3 = request.getParameter("q3");
        
        String skema1 = null, skema2 = null, skema3 = null; // answer scheme
        int markah=0,set=0; // for marks
        
        // answer set 1
        String jaw1 = "C. Nombor telefon";
        String jaw2 = "A. Fasa Penciptaan";
        String jaw3 = "C. I, III dan IV";
        
        // answer set 2
        String jaw4 = "B. Tepat. ID_Murid merupakan data yang unik dan berbeza setiap barisan";
        String jaw5 = "C. Nama_Murid";
        String jaw6 = "B. Nombor telefon";
        
        //answer set 3
        String jaw7="C. Mengehadkan kemasukan data";
        String jaw8="D. Kekunci primer boleh mengandungi data yang berulang/sama/ditinggalkan kosong(null)";
        String jaw9="D. I,II,III, dan IV";
        
        Statement stmt = con.createStatement();
        
         HttpSession session = request.getSession();
          int userID = (Integer)session.getAttribute("userID");
            
 
       
       
            try{
            
            switch(setujian){
                
                
                case 1:{
             
                    if(ques1.equals(jaw1)){
                        markah = markah+ 1;
                        skema1="BETUL. Jawapan anda ialah " + jaw1 + "." ;// JAWAPAN BETUL
                    }
                    else{
                        skema1="SALAH. Jawapan betul ialah "+ jaw1 + "."  ;// JAWAPAN SALAH
                    }

                    if(ques2.equals(jaw2)){
                        markah = markah+ 1;
                        skema2="BETUL. Jawapan anda ialah  " + jaw2 + "."  ;// BETUL
                    }
                    else{
                        skema2="SALAH. Jawapan betul ialah " + jaw2 + "."  ; // SALAH
                    }

                    if(ques3.equals(jaw3)){
                        markah = markah+ 1;
                        skema3="BETUL. Jawapan anda ialah  " + jaw3 + "."  ;// BETUL
                    }
                    else{
                        skema3="SALAH. Jawapan betul ialah " + jaw3 + "."  ; // SALAH
                    }
                    break;
                }
            
                case 2:{
                    if(ques1.equals(jaw4)){
                        markah = markah+ 1;
                        skema1="BETUL. Jawapan anda ialah " + jaw4 + "." ;// JAWAPAN BETUL
                    }
                    else{
                        skema1="SALAH. Jawapan betul ialah "+ jaw4 + "."  ;// JAWAPAN SALAH
                    }

                    if(ques2.equals(jaw5)){
                        markah = markah+ 1;
                        skema2="BETUL. Jawapan anda ialah  " + jaw5 + "."  ;// BETUL
                    }
                    else{
                        skema2="SALAH. Jawapan betul ialah " + jaw5 + "."  ; // SALAH
                    }

                    if(ques3.equals(jaw6)){
                        markah = markah+ 1;
                        skema3="BETUL. Jawapan anda ialah  " + jaw6 + "."  ;// BETUL
                    }
                    else{
                        skema3="SALAH. Jawapan betul ialah " + jaw6 + "."  ; // SALAH
                    }
                    
                    break;
            }
                
                default:{
                    if(ques1.equals(jaw7)){
                        markah = markah+ 1;
                        skema1="BETUL. Jawapan anda ialah " + jaw7 + "." ;// JAWAPAN BETUL
                    }
                    else{
                        skema1="SALAH. Jawapan betul ialah "+ jaw7 + "."  ;// JAWAPAN SALAH
                    }

                    if(ques2.equals(jaw8)){
                        markah = markah+ 1;
                        skema2="BETUL. Jawapan anda ialah  " + jaw8 + "."  ;// BETUL
                    }
                    else{
                        skema2="SALAH. Jawapan betul ialah " + jaw8 + "."  ; // SALAH
                    }

                    if(ques3.equals(jaw9)){
                        markah = markah+ 1;
                        skema3="BETUL. Jawapan anda ialah  " + jaw9 + "."  ;// BETUL
                    }
                    else{
                        skema3="SALAH. Jawapan betul ialah " + jaw9 + "."  ; // SALAH
                    }
             }
                    
    }
            

            
            String sql;
            sql= "SELECT * from jawapanujianuser WHERE userID='"+ userID +"' AND setujian='"+ setujian +"'";
            ResultSet rs= stmt.executeQuery(sql);
            //check condition if userID exist thus update. else insert new data
            if (rs.next()){
                String sqlUpdate = "UPDATE jawapanujianuser SET setujian=?,q1=?,skema1=?,q2=?,skema2=?,q3=?,skema3=?,markah=? WHERE userID='"+ userID +"'AND setujian='"+ setujian +"'";
                PreparedStatement up = con.prepareStatement (sqlUpdate);
                up.setInt (1, setujian);
                up.setString (2, ques1);
                up.setString (3, skema1);
                up.setString (4, ques2);
                up.setString (5, skema2);
                up.setString (6, ques3);
                up.setString (7, skema3);
                up.setInt (8, markah);
                  up.executeUpdate();
            }
            else{
            // insert data in jawapanujianuser table // USERID IS FOREIGN KEY FROM REGISTER TABLE
          String sqlInsert = "INSERT INTO jawapanujianuser (userID, setujian,q1,skema1,q2,skema2,q3,skema3,markah) VALUES (?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sqlInsert);
            ps.setInt(1, userID);
            ps.setInt(2, setujian);
            ps.setString(3, ques1);
            ps.setString(4, skema1);
            ps.setString(5, ques2);
            ps.setString(6, skema2);
            ps.setString(7, ques3);
            ps.setString(8, skema3);
            ps.setInt(9, markah);
            ps.executeUpdate();
            }
            
        }catch(SQLException ex){
            out.println("Maaf,cuba lagi");
        }
            
         
        
       if(setujian==1){
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("ujian_markah1.jsp");
        request.setAttribute("markah", markah);
        requestDispatcher.forward(request, response);
            
       }
       
       if(setujian==2){
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("ujian_markah2.jsp");
        request.setAttribute("markah", markah);
        requestDispatcher.forward(request, response);
            
       }
       
       if(setujian==3){
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("ujian_markah3.jsp");
        request.setAttribute("markah", markah);
        requestDispatcher.forward(request, response);
            
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
          Logger.getLogger(UjianServlet.class.getName()).log(Level.SEVERE, null, ex);
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
          Logger.getLogger(UjianServlet.class.getName()).log(Level.SEVERE, null, ex);
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
