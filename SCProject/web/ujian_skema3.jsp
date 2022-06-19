<%-- 
    Document   : ujian_skema3
    Created on : Dec 19, 2020, 8:39:13 PM
    Author     : syazlyn
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="jdbc.JDBCUtility"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
private JDBCUtility jdbcUtility;
    private Connection con;
  
        String driver = "com.mysql.jdbc.Driver";

        String dbName = "webapplicationad";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String password = "";
%>

<%
        jdbcUtility = new JDBCUtility(driver,
                                      url,
                                      userName,
                                      password);

        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
        Statement stmt1 = con.createStatement();
        int userID = (Integer)session.getAttribute("userID");
        ResultSet rs = stmt1.executeQuery("SELECT * FROM jawapanujianuser WHERE userID='"+userID+"'AND setujian=3"); 
        
        String skema1 = "";
         String skema2 = "";
         String skema3 = "";
         String ques1 = "";
         String ques2 ="";
         String ques3="";
         int markah = 0;
         
while(rs.next()){
    skema1 = rs.getString("skema1");
    skema2= rs.getString("skema2");
    skema3 = rs.getString("skema3");
    ques1 = rs.getString("q1");
    ques2 = rs.getString("q2");
    ques3 = rs.getString("q3");
    markah = rs.getInt("markah");
}
%>



<!DOCTYPE html>
<html>
    <head>
        <%@ include file="jsp/meta.jsp"%>
       <title>Skema Ujian 3</title>       
       <%@ include file="jsp/header.jsp"%>
    </head> 
    <body>
        
  

          <div class="page-container">
        <div class="page-main">
          <div class="page-cont-col">
              <div class="ujian-review">
        
        <table class="ujianskema" width="100%">
        <h1 style="text-align: center">Semakan Ujian 3</h1>
    
        <h3> Markah anda ialah <% out.println(markah) ;%>/3 </h3>
            <tr><td>SOALAN  </td> <td> Pilih kegunaan utama borang (form) dalam pangkalan data yang SALAH.<br></td> </tr>
            <tr><td>JAWAPAN </td> <td>  Jawapan anda: <br> <%  if (skema1.contains("BETUL.")== true){%> <p style="color:green"> <% out.println(ques1); %>  </p>
                                                <% } else {%><p style="color:red"><% out.println(ques1); }%> </p> <br>    <% out.println(skema1); %>  <br></td> </tr>
                    
                        
            <tr><td>SOALAN  </td> <td>  Pilih jawapan yang SALAH.<br></td> </tr>
            <tr><td>JAWAPAN </td> <td> Jawapan anda: <br> <%  if (skema2.contains("BETUL.")== true){%> <p style="color:green"> <% out.println(ques2); %>  </p>
                                                <% } else {%><p style="color:red"><% out.println(ques2); }%> </p>  <br>  <%out.println(skema2); %> <br></td> </tr>
            
             <tr><td>SOALAN  </td> <td> Nyatakan entiti dan atribut-atribut yang wujud dalam persekitaran pusat sumber sekolah <br><br>

                I. Sirkulasi<br>                   
                II. Meja<br>
                III. Buku<br>
                IV. Rak buku<br></td> </tr>
             
             <tr><td>JAWAPAN </td> <td> Jawapan anda: <br>  <%  if (skema3.contains("BETUL.")== true){%> <p style="color:green"> <% out.println(ques3); %>  </p>
                                                <% } else {%><p style="color:red"><% out.println(ques3); }%> 
                                                </p> <br>  <% out.println(skema3); %> <br> </td> </tr>
        </table>           
        
       
        <div class="form-submit">
           <button class="learn-more" onclick="goBack()"><span>Kembali</span></button>
       
        <button class="learn-more" onclick="document.location='ujian3.jsp'"><span>Cuba Lagi</span></button><br>
       </div> 
       </div>
        </div>
        </div>
          </div>
<script>
function goBack() {
  window.history.back();
}
</script>
    </body>
    <%@ include file="jsp/footer.jsp"%>
    
</html>