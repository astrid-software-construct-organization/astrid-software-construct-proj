<%-- 
    Document   : exercise_landing
    Created on : Dec 2, 2020, 5:30:14 AM
    Author     : Adawiyah Azzaharah Binti Zuraimi
--%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang="en">
    <head>
        <%@ include file="jsp/meta.jsp"%>
       <title>Latihan</title>       
       <%@ include file="jsp/header.jsp"%>
    </head>
    <body>
    <div class="page-container">                  
        <div class="page-main">
            <div class="page-main-content">
                <h1>LATIHAN BAB 4: KOD ARAHAN</h1>
                <% if(session.getAttribute("userID")!=null){ %>
                <a href="exercise_page.jsp" class="learn-more"><span>Cuba Latihan</span></a>
                <%} else{ %>
                    <h2>Sila daftar masuk terlebih dahulu sebelum mencuba latihan.</h2>
                    <a href="login.jsp" class="learn-more"><span>Log Masuk</span></a>
                <% } %>
            </div> 
        </div>
    </div>
    </body>
    <%@ include file="jsp/footer.jsp"%>
</html>