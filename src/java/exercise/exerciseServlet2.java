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
@WebServlet(name = "exerciseServlet2", urlPatterns = {"/exerciseServlet2"})
public class exerciseServlet2 extends HttpServlet {

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
            PrintWriter out=response.getWriter();
            response.setContentType("text/html;charset=UTF-8");
            String[] ca={"B","B","C","A","B","C",
                         "A","D","A","A","D","B",
                         "B","A","B","A","A","A"};
            String ua1="",ua2="",ua3="",ua4="",ua5="",ua6="",ua7="",ua8="",ua9="",ua10="",ua11="",ua12="",ua13="",ua14="",ua15="",ua16="",ua17="",ua18="";
            String jwp1="",jwp2="",jwp3="",jwp4="",jwp5="",jwp6="",jwp7="",jwp8="",jwp9="",jwp10="",jwp11="",jwp12="",jwp13="",jwp14="",jwp15="",jwp16="",jwp17="",jwp18="";
            int tm=0;
            HttpSession session = request.getSession();
            int userID=Integer.parseInt(session.getAttribute("userID").toString());
        try {
            Statement stmt= con.createStatement();
            String sql;
            sql= "SELECT * FROM userexeans WHERE userID='"+ userID +"'";//answerID tukar userID & ikut userID
            ResultSet rs= stmt.executeQuery(sql);
            while (rs.next())
            {
                ua1 = rs.getString("q1");
                ua2 = rs.getString("q2");
                ua3 = rs.getString("q3");
                ua4 = rs.getString("q4");
                ua5 = rs.getString("q5");
                ua6 = rs.getString("q6a");
                ua7 = rs.getString("q6b");
                ua8 = rs.getString("q7");
                ua9 = rs.getString("q8");
                ua10 = rs.getString("q9a");
                ua11 = rs.getString("q9b");
                ua12 = rs.getString("q10");
                ua13 = rs.getString("q11");
                ua14 = rs.getString("q12");
                ua15 = rs.getString("q13a");
                ua16 = rs.getString("q13b");
                ua17 = rs.getString("q13c");
                ua18 = rs.getString("q13d");
                tm=rs.getInt("totalMarks");
            }
            if(ua1.equals(ca[0]))
            {
                jwp1=ua1+" - BETUL!";
            }
            else
            {
                jwp1=ua1+" - SALAH!";
            }
            if(ua2.equals(ca[1]))
            {
                jwp2=ua2+" - BETUL!";
            }
            else
            {
                jwp2=ua2+" - SALAH!";
            }
            if(ua3.equals(ca[2]))
            {
                jwp3=ua3+" - BETUL!";
            }
            else
            {
                jwp3=ua3+" - SALAH!";
            }
            if(ua4.equals(ca[3]))
            {
                jwp4=ua4+" - BETUL!";
            }
            else
            {
                jwp4=ua4+" - SALAH!";
            }
            if(ua5.equals(ca[4]))
            {
                jwp5=ua5+" - BETUL!";
            }
            else
            {
                jwp5=ua5+" - SALAH!";
            }
            if(ua6.equals(ca[5]))
            {
                jwp6=ua6+" - BETUL!";
            }
            else
            {
                jwp6=ua6+" - SALAH!";
            }
            if(ua7.equals(ca[6]))
            {
                jwp7=ua7+" - BETUL!";
            }
            else
            {
                jwp7=ua7+" - SALAH!";
            }
            if(ua8.equals(ca[7]))
            {
                jwp8=ua8+" - BETUL!";
            }
            else
            {
                jwp8=ua8+" - SALAH!";
            }
            if(ua9.equals(ca[8]))
            {
                jwp9=ua9+" - BETUL!";
            }
            else
            {
                jwp9=ua9+" - SALAH!";
            }
            if(ua10.equals(ca[9]))
            {
                jwp10=ua10+" - BETUL!";
            }
            else
            {
                jwp10=ua10+" - SALAH!";
            }
            if(ua11.equals(ca[10]))
            {
                jwp11=ua11+" - BETUL!";
            }
            else
            {
                jwp11=ua11+" - SALAH!";
            }
            if(ua12.equals(ca[11]))
            {
                jwp12=ua12+" - BETUL!";
            }
            else
            {
                jwp12=ua12+" - SALAH!";
            }
            if(ua13.equals(ca[12]))
            {
                jwp13=ua13+" - BETUL!";
            }
            else
            {
                jwp13=ua13+" - SALAH!";
            }
            if(ua14.equals(ca[13]))
            {
                jwp14=ua14+" - BETUL!";
            }
            else
            {
                jwp14=ua14+" - SALAH!";
            }
            if(ua15.equals(ca[14]))
            {
                jwp15=ua15+" - BETUL!";
            }
            else
            {
                jwp15=ua15+" - SALAH!";
            }
            if(ua16.equals(ca[15]))
            {
                jwp16=ua16+" - BETUL!";
            }
            else
            {
                jwp16=ua16+" - SALAH!";
            }
            if(ua17.equals(ca[16]))
            {
                jwp17=ua17+" - BETUL!";
            }
            else
            {
                jwp17=ua17+" - SALAH!";
            }
            if(ua18.equals(ca[17]))
            {
                jwp18=ua18+" - BETUL!";
            }
            else
            {
                jwp18=ua18+" - SALAH!";
            }
            
        }catch(SQLException e){
            out.println("Maaf,cuba lagi");
        }
        RequestDispatcher requestDispatcher=request.getRequestDispatcher("exercise_review.jsp");
        request.setAttribute("tm", tm);
        request.setAttribute("jwp1", jwp1);
        request.setAttribute("jwp2", jwp2);
        request.setAttribute("jwp3", jwp3);
        request.setAttribute("jwp4", jwp4);
        request.setAttribute("jwp5", jwp5);
        request.setAttribute("jwp6", jwp6);
        request.setAttribute("jwp7", jwp7);
        request.setAttribute("jwp8", jwp8);
        request.setAttribute("jwp9", jwp9);
        request.setAttribute("jwp10", jwp10);
        request.setAttribute("jwp11", jwp11);
        request.setAttribute("jwp12", jwp12);
        request.setAttribute("jwp13", jwp13);
        request.setAttribute("jwp14", jwp14);
        request.setAttribute("jwp15", jwp15);
        request.setAttribute("jwp16", jwp16);
        request.setAttribute("jwp17", jwp17);
        request.setAttribute("jwp18", jwp18);
        request.setAttribute("userID",userID);
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