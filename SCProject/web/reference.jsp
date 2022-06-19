<%-- 
    Document   : reference
    Created on : Jan 15, 2021, 11:17:46 PM
    Author     : Asha Dalila binti Zulkifly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="jsp/meta.jsp"%>
        <title>Pautan Rujukan</title>
        <%@ include file="jsp/header.jsp"%>
    </head>
    <body>
        <div class="page-container">
            <div class="page-main">
                <div id="link-list">
                <ol><h2>Pautan Direktori Laman Web</h2>
                    <li><a href="index.jsp">Laman Utama&nbsp;<i class="fas fa-home"></i></a></li>
                    <li>Topik 4.1 Pangkalan Data & SQL &nbsp;<i class="fas fa-database"></i>
                        <ul>
        <li><a href="subtopik1.jsp">4.1.1 Maksud dan Pengunaan Pangkalan Data dan Structured Query Language (SQL)</a></li>
        <li><a href="subtopik2.jsp">4.1.2 Entiti dan Atribut</a></li>
        <li><a href="subtopik3.jsp">4.1.3 Kekunci Primer dan Kekunci Asing</a></li>
        <li><a href="subtopik4.jsp">4.1.4 Kekardinalan(Cardinality antara Entiti dalam Hubungan</a></li>
        <li><a href="subtopik5.jsp">4.1.5 Membina Pangkalan Data</a></li>
        <li><a href="subtopik6.jsp">4.1.6 Menghasilkan Borang dan Memasukkan Data Melalui Borang</a></li>
        <li><a href="subtopik7.jsp">4.1.7 Penggunaan Pernyataan-pernyataan SQL</a></li>
        <li><a href="subtopik8.jsp">4.1.8 Penggunaan Pernyataan-pernyataan SQL yang Melibatkan Ungkapan Boolean</a></li>
        <li><a href="subtopik9.jsp">4.1.9 Menjana Laporan Berdasarkan Hasil Pertanyaan (Query)</a></li>                            
                        </ul>
                    </li>
                    <li>Aktiviti
                        <ul>
                            <li><a href="exercise_landing.jsp">Latihan</a></li>
                            <li><a href="ujian_landing.jsp">Ujian</a></li>
                        </ul>
                    </li>
                    <li><a href="FAQ.jsp">FAQ&nbsp;<i class="fas fa-question-circle"></i></a></li>
                    <li><a href="feedback.jsp">Maklum Balas&nbsp;<i class="fas fa-comments"></i></a></li>
                    <li><a href="reference.jsp">Pautan Rujukan&nbsp;<i class="fas fa-link"></i></a></li>
            <c:set var="un" value='<%= session.getAttribute("userID") %>'/>
            <c:choose>
            <c:when test="${un != null}"> 
                    <li>Akaun
                        <ul>
                            <li><a href="userViewServlet.jsp">Akaun Pengguna&nbsp;<i class="fas fa-user-circle"></i></a></li>
                            <li><a href="confirmDelete.jsp">Nyahaktifkan Akaun&nbsp;<i class="fas fa-user-minus"></i></a></li>
                            <li><a href="logoutServlet">Log Keluar&nbsp;<i class="fas fa-sign-out-alt"></i></a></li>
                        </ul>
                    </li>
            </c:when>
            <c:otherwise>  
                <li><a href="registration_form.jsp">Daftar&nbsp;<i class="fas fa-user-plus"></i></a></li>
                <li><a href="login.jsp">Log Masuk&nbsp;<i class="fas fa-sign-in-alt"></i></a></li>             
            
            </c:otherwise>
            </c:choose> 
                </ol>
                    <ol><h2>Pautan Luar</h2>
                        <li><a href="https://textbook.moe.gov.my/login">Laman Web KPM e-TEXTBOOK&nbsp;<i class="fas fa-external-link-alt"></i></a></li>
                    </ol>
                </div>
            </div>
        </div>
    </body>
</html>
