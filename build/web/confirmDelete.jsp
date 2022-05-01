<%-- 
    Document   : confirmDelete
    Created on : Jan 13, 2021, 2:27:05 PM
    Author     : Farah Athirah Binti Mohd Hanafiah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bean.user"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${sessionScope.userID == null}">
<% response.sendRedirect(request.getContextPath() + "/login.jsp");%>
</c:if>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="jsp/meta.jsp"%>
        <title>Padam Akaun</title>
        <%@ include file="jsp/header.jsp"%>
    </head>
    <body>
        <div class="page-container">
            <div class="page-main">                  
                    <form method="POST" class="exercise-question" action="deleteServlet">
                        <h3>Padam Akaun Selamanya</h3>
                        
                        <p>Adakah anda yakin mahu menutup akaun selamanya.</p>
                        <p>Semua maklumat dan data anda akan dibuang dan tidak dapat diambil semula</p>
                        <p>Jika ya tekan teruskan dan akaun akan ditutup</p>
                        <button type="submit" class="del">Teruskan&nbsp;<i class="fas fa-trash-alt"></i></button>
                        <button class="del" onclick="document.location='myAcc.jsp'">Batal</button>
                    </form>
            </div>
        </div>
    </body>
</html>
