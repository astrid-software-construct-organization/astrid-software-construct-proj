/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exercise;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Enumeration;
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
 * @author Adawiyah Azzaharah Binti Zuraimi
 */
@WebServlet(name = "exerciseServlet", urlPatterns = {"/exerciseServlet"})
public class exerciseServlet extends HttpServlet {

    private JDBCUtility jdbcUtility;
    private Connection con;
    
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
            //1.fetch input
            //insert data
            String q1 = request.getParameter("q1");
            String q2 = request.getParameter("q2");
            String q3 = request.getParameter("q3");
            String q4 = request.getParameter("q4");
            String q5 = request.getParameter("q5");
            String q6a = request.getParameter("q6a");
            String q6b = request.getParameter("q6b");
            String q7 = request.getParameter("q7");
            String q8 = request.getParameter("q8");
            String q9a = request.getParameter("q9a");
            String q9b = request.getParameter("q9b");
            String q10 = request.getParameter("q10");
            String q11 = request.getParameter("q11");
            String q12 = request.getParameter("q12");
            String q13a = request.getParameter("q13a");
            String q13b = request.getParameter("q13b");
            String q13c = request.getParameter("q13c");
            String q13d = request.getParameter("q13d");
            //session utk user
            HttpSession session = request.getSession();
            int userID=Integer.parseInt(session.getAttribute("userID").toString());
            
            Enumeration <String> paramNames=request.getParameterNames();
            String paramName,paramValue[],ans="";
            int cnt=0;
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out=response.getWriter(); 
        response.setContentType("text/html;charset=UTF-8");
        try{
            Statement stmt= con.createStatement();
            String sql;
            sql= "SELECT * from userexeans WHERE userID='"+ userID +"'";
            ResultSet rs= stmt.executeQuery(sql);
            //check condition if userID exist thus update. else insert new data
            if (rs.next()){
                String sqlUpdate = "UPDATE userexeans SET q1=?,q2=?,q3=?,q4=?,q5=?,q6a=?,q6b=?,q7=?,q8=?,q9a=?,q9b=?,q10=?,q11=?,q12=?,q13a=?,q13b=?,q13c=?,q13d=? WHERE userID='"+ userID +"'";
                PreparedStatement up = con.prepareStatement (sqlUpdate);
                up.setString (1, q1);
                up.setString (2, q2);
                up.setString (3, q3);
                up.setString (4, q4);
                up.setString (5, q5);
                up.setString (6, q6a);
                up.setString (7, q6b);
                up.setString (8, q7);
                up.setString (9, q8);
                up.setString (10, q9a);
                up.setString (11, q9b);
                up.setString (12, q10);
                up.setString (13, q11);
                up.setString (14, q12);
                up.setString (15, q13a);
                up.setString (16, q13b);
                up.setString (17, q13c);
                up.setString (18, q13d);
                up.executeUpdate();
            }
            else{
            String sqlInsert = "INSERT INTO userexeans(q1, q2, q3, q4, q5, q6a, q6b, q7, q8, q9a, q9b, q10, q11, q12, q13a, q13b, q13c, q13d,userID) "
                    + "         VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"; //tmbh userID
            PreparedStatement ps = con.prepareStatement (sqlInsert);
            ps.setString (1, q1);
            ps.setString (2, q2);
            ps.setString (3, q3);
            ps.setString (4, q4);
            ps.setString (5, q5);
            ps.setString (6, q6a);
            ps.setString (7, q6b);
            ps.setString (8, q7);
            ps.setString (9, q8);
            ps.setString (10, q9a);
            ps.setString (11, q9b);
            ps.setString (12, q10);
            ps.setString (13, q11);
            ps.setString (14, q12);
            ps.setString (15, q13a);
            ps.setString (16, q13b);
            ps.setString (17, q13c);
            ps.setString (18, q13d);
            ps.setInt(19, userID);
            ps.executeUpdate();
            }
            
        }catch(SQLException ex){
            out.println("Maaf,cuba lagi");
        }
        try {
            Statement stmt= con.createStatement();
            String sql;
            sql= "SELECT correctAns from exercise";
            ResultSet rs= stmt.executeQuery(sql);
            
            while(rs.next()&&paramNames.hasMoreElements())
            {
                String un = rs.getString(1);
                paramName = (String)paramNames.nextElement();
                paramValue = request.getParameterValues(paramName);
                
                for (int i=0;i<paramValue.length;i++) {
                    ans = paramValue[i];
                }
                if(un.equals(ans))
                    cnt++;
            } 
            String sqlUpdate = "UPDATE userexeans SET totalMarks=? WHERE userID =?";
            PreparedStatement up = con.prepareStatement (sqlUpdate);
            up.setInt (1, cnt);
            up.setInt(2, userID);
            up.executeUpdate();
        }catch(SQLException e){
            out.println("Maaf,cuba lagi");
        }
        RequestDispatcher requestDispatcher=request.getRequestDispatcher("exercise_mark.jsp");
        request.setAttribute("cnt", cnt);
        requestDispatcher.forward(request, response);
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