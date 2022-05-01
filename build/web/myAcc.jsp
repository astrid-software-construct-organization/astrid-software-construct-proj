<%-- 
    Document   : myAcc
    Created on : Dec 2, 2020, 1:26:17 AM
    Author     : Farah Athirah Binti Mohd Hanafiah
                 Nurul Adila Binti Mohamad Kamil (performance)
                 Asha Dalila Binti Zulkifly (update profile and image)
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="bean.user"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="jdbc.JDBCUtility"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${sessionScope.userID == null}">
<% response.sendRedirect(request.getContextPath() + "/login.jsp");%>
</c:if>
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
try{
        Statement stmt = con.createStatement();
        String sql;
        int userid = Integer.parseInt(session.getAttribute("userID").toString());
        sql = "SELECT * FROM user where userID =\'"+userid+"\'";
        ResultSet rs = stmt.executeQuery(sql);
        String name = "";
        String username = "";
        String email = "";
        String passw = "";
        
        while(rs.next())
        {
            name = rs.getString("name");
            username = rs.getString("username");
            email = rs.getString("email");
            passw = rs.getString("password");
            
        }
        Statement stmt1 = con.createStatement();
        Statement stmt2 = con.createStatement();
        String ujian1 = "";
        String ujian2 = "";
        String ujian3 = "";
        String latihan = "";
        
        ResultSet resultset1 = stmt1.executeQuery("SELECT * FROM jawapanujianuser WHERE setujian=1 and userID =\'"+userid+"\'");
        int markah1=0;
        while(resultset1.next())
        {
            markah1 = resultset1.getInt("markah");
            ujian1="exist";
        }
        
        ResultSet resultset2 = stmt1.executeQuery("SELECT * FROM jawapanujianuser WHERE setujian=2 and userID =\'"+userid+"\'");
        int markah2=0;
        while(resultset2.next())
        {
            markah2 = resultset2.getInt("markah");
            ujian2="exist";
        }
     
        ResultSet resultset3 = stmt1.executeQuery("SELECT * FROM jawapanujianuser WHERE setujian=3 and userID =\'"+userid+"\'");
        int markah3=0;
        while(resultset3.next())
        {
            markah3 = resultset3.getInt("markah");
            ujian3="exist";
        }
        ResultSet resultExer = stmt2.executeQuery("SELECT * FROM userexeans WHERE userID =\'"+userid+"\'");
        int markahExer =0;
        while(resultExer.next())
        {
            markahExer = resultExer.getInt("totalMarks");
            latihan="exist";
        }
  
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profil Pengguna</title>
        <%@ include file="jsp/header.jsp"%>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"/>
        <link rel="stylesheet" href="css/menustyle.css">
        <link rel="stylesheet" href="css/style.css">
<script>
// Get modal
var modal = document.getElementById('id01');
var modal2 = document.getElementById('id02');
// When the user clicks anywhere outside of the modal close it
window.onclick = function(event) {
    if (event.target === modal) {
        modal.style.display = "none";
    }
    if (event.target === modal2) {
        modal2.style.display = "none";
    }
};
// When the user clicks on div, open the popup
function myFunction() {
  var popup = document.getElementById("myPopup");
  popup.classList.toggle("show");
}

</script>

</head>
<body>
    <%user usr = (user)session.getAttribute("usr");
    usr.setName(name);
    usr.setUsername(username);
    usr.setEmail(email);
    usr.setPassword(passw);%>

     <div class="page-container">
            <div class="page-cont-row">
               
                <div class="panels" id="one-panel">
                    <div class="panel-title"><br>Profil Pengguna</div>
                <div class="login-box">
                    <div class="profile-img">
                    <c:set var="photo" value="<%=usr.getBase64Image() %>"/>
            <c:choose>
            <c:when test="${photo != null}"> 
            <img src="data:image/png;base64,<%=usr.getBase64Image() %>" class="center2"/>
               </c:when>
            <c:otherwise>                
            <img src="images/avatar.png" class="center2"/>
            </c:otherwise>
             </c:choose> 
             <div class="profile-img-middle">
                <button onclick="document.getElementById('id02').style.display='block'"><i class="fa fa-fw fa-upload"></i></button>
                
            </div>
                    </div>
                    <div class="loginh2">
                    <div style="color: Black;">${successMessage}</div>
                    <% session.removeAttribute("successMessage"); %>
                    </div>
                    <div class="accForm">
                        <div class="form-group">
                            <table>
                                <tr>
                                    <th style="text-align: left;">Nama Pengguna</th>
                                </tr>
                                <tr>
                                    <td><%=usr.getUsername() %></td>
                                </tr>
                                <tr>
                                    <th style="text-align: left;"><br>Nama Penuh</th>
                                </tr>
                                <tr>
                                    <td><%=usr.getName() %></td>
                                </tr>
                                <tr>
                                    <th style="text-align: left;"><br>Email</th>
                                </tr>
                                <tr>
                                    <td><%=usr.getEmail() %></td>
                                </tr>
                            </table>
                    </div>
                                <button class="learn-more" onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><b>Ubah Profil</b>&nbsp;<i class="fas fa-user-edit"></i></button>
                     <div class="popup">
                     <button class="learn-more" onclick="myFunction()"><b>Tutup Akaun</b>&nbsp;<i class="fas fa-user-minus"></i></button>
                     <span class="popuptext" id="myPopup" >Anda yakin mahu membuang akaun?<br>
                     <button onclick="document.location='confirmDelete.jsp'" class="del">Ya</button>
                     <button class="del" onclick="document.location='myAcc.jsp'">Batal</button></span>
                    </div>
                    </div>
            </div>
            </div>
                                                   
         <div class="panels" id="two-panel">   
             <div class="panel-title"><br>Prestasi</div>
            <div class="login-box">
                <div class="accForm">
            <table>
            <tr>
                <th></th>
                <th>Markah</th>
                <th>Semak</th>
            </tr>
            <tr>
            <td>Ujian 1 <progress id="ujian1" value="<%=markah1%>" max="3">Ujian 1</progress></td>
            <td style="text-align: right;"><% out.println(markah1);%>/3</td>
            <td style="text-align: center;">
                <% if(ujian1.equals("exist")){ %>
                <a href="ujian_skema1.jsp"><i class="fa fa-fw fa-eye"></i></a> 
                <% } else{ %> 
                <a href="#"><i class="fa fa-fw fa-eye-slash"></i></a>
                <% }%></td>
            </tr>
            
            <tr>
            <td><br>Ujian 2 <progress id="ujian2" value="<%=markah2%>" max="3"></progress></td>
            <td style="text-align: right;"><br><% out.println(markah2);%>/3</td>
            <td style="text-align: center;"><br>
                <% if(ujian2.equals("exist")){ %>
                <a href="ujian_skema2.jsp"><i class="fa fa-fw fa-eye"></i></a> 
                <% } else{ %> 
                <a href="#"><i class="fa fa-fw fa-eye-slash"></i></a>
                <% }%></td>
            </tr>
            
            <tr>
            <td><br>Ujian 3 <progress id="ujian2" value="<%=markah3%>" max="3"></progress></td>
            <td style="text-align: right;"><br><% out.println(markah3);%>/3</td>
            <td style="text-align: center;"><br><% if(ujian3.equals("exist")){ %><a href="ujian_skema3.jsp"><i class="fa fa-fw fa-eye"></i></a> <% } else{%> <a href="#"><i class="fa fa-fw fa-eye-slash"></i></a><% }%></td>
            </tr>        
           
            <tr>
                <td><br>Latihan <progress id="latihan" value="<%=markahExer%>" max="18"></progress></td>
                <td style="text-align: right;"><br><% out.println(markahExer);%>/18 </td>
                <td style="text-align: center;"><br><% if(latihan.equals("exist")){ %><a href="exerciseServlet2"><i class="fa fa-fw fa-eye"></i></a> <% } else{ %> <a href="#"><i class="fa fa-fw fa-eye-slash"></i></a><% }%></td>
            </tr>
            
         </table> 
                        
                </div>
            </div>
         </div>       
            </div> 
            
            <div id="id01" class="modal">
                 <form method="post" class="modal-content2 animate" action="updateProfileServlet" >
                        <div class="imgcontainer">
                        <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                        <h1>Ubah Akaun</h1>
                        </div>      
                        <div class="container3">
                            <div class=" accForm">

                                <label for="username">Nama Pengguna</label>
                                <input type="text" name="username" id="username" value="<%=usr.getUsername() %>" />
      
                                <label for="name">Nama Penuh</label>
                                <input type="text" name="name" id="name" value="<%=usr.getName() %>"  onkeyup="this.value = this.value.toUpperCase();" />
      
                                <label for="email">Email</label>
                                <input type="text" name="email" id="Email"value="<%=usr.getEmail() %>"  />
      
                                <label for="password">Password</label>
                                <input type="password" value="<%=usr.getPassword() %>"  name="password" />
                                
                               
                                
                            </div>                        
                            <button type="submit" name="submit" value="update">Simpan</button>
                            <button type="reset" value="reset">Reset</button>
                        </div>
                </form> 
            </div>
            <div id="id02" class="modal">
                 <form method="post" class="modal-content2 animate" action="updateImageServlet" enctype="multipart/form-data">
                        <div class="imgcontainer">
                        <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
                        <h1>Ubah Gambar Profil</h1>
                        </div>      
                        <div class="container3">
                            <div class=" accForm">
                    <label for="photo">Photo</label>
                    <input type="file" name="photo"/>
                                
                            </div>                        
                            <button type="submit" name="submit" value="updateImage">Simpan</button>
                            <button type="reset" value="reset">Reset</button>
                        </div>
                </form> 
            </div>                                
       </div>
<script>
function goBack() {
  window.history.back();
}
</script>
</body>
<%@ include file="jsp/footer.jsp"%>
<%
    if(con!=null){
        try{
            con.close();
        }catch(Exception ex){
            ex.printStackTrace();
        }
    } 
} catch (Exception e) {
    e.printStackTrace();
}
%>
</html>