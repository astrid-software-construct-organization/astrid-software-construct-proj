<%-- 
    Document   : UjiKendiri
    Created on : Dec 2, 2020, 5:28:14 AM
    Author     : User
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
       <title>Ujian</title>       
       <%@ include file="jsp/header.jsp"%>
    </head>
    <body>
    <div class="page-container">                  
        <div class="page-main">
            <div class="page-main-content">
                <h1>UJIAN BAB 4: KOD ARAHAN</h1>
                <% if(session.getAttribute("userID")!=null){ %>
                <a href="ujian_set.jsp" class="learn-more"><span>Cuba Ujian</span></a>
                <%} else{ %>
                    <h2>Sila daftar masuk terlebih dahulu sebelum mencuba ujian.</h2>
                    <a href="login.jsp" class="learn-more"><span>Log Masuk</span></a>
                <% } %>
            </div> 
        </div>
    </div>
    </body>
    <%@ include file="jsp/footer.jsp"%>
</html>