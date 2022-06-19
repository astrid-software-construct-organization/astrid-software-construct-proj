<%-- 
    Document   : exam
    Created on : Nov 17, 2020, 8:03:31 AM
    Author     : Fara Syazlyn
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${sessionScope.userID == null}">
<% response.sendRedirect(request.getContextPath() + "/login.jsp");%>
</c:if>
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
                    <h1>Jom Uji Diri!</h1>
                    <a href="ujian1.jsp" class="big-button">Ujian SET 1</a>
                    <a href="ujian2.jsp" class="big-button">Ujian SET 2</a>
                    <a href="ujian3.jsp" class="big-button">Ujian SET 3</a>
                </div>
            </div>
        </div>
    </body>
       <%@ include file="jsp/footer.jsp"%>
</html>