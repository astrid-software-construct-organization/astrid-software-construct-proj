<%-- 
    Document   : header
    Created on : Nov 22, 2020, 3:02:21 AM
    Author     : F5 Labs
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
        <header>
        <div class="header-container" id="myTopnav">
                <a href="index.jsp"><i class="fas fa-home"></i></a>                 
            <div class="dropdown">
                <button class="dropbtn">Topik
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="subtopik1.jsp">4.1.1 Maksud dan Pengunaan Pangkalan Data dan Structured Query Language (SQL)</a>
                    <a href="subtopik2.jsp">4.1.2 Entiti dan Atribut</a>
                    <a href="subtopik3.jsp">4.1.3 Kekunci Primer dan Kekunci Asing</a>
                    <a href="subtopik4.jsp">4.1.4 Kekardinalan(Cardinality antara Entiti dalam Hubungan</a>
                    <a href="subtopik5.jsp">4.1.5 Membina Pangkalan Data</a>
                    <a href="subtopik6.jsp">4.1.6 Menghasilkan Borang dan Memasukkan Data Melalui Borang</a>
                    <a href="subtopik7.jsp">4.1.7 Penggunaan Pernyataan-pernyataan SQL</a>
                    <a href="subtopik8.jsp">4.1.8 Penggunaan Pernyataan-pernyataan SQL yang Melibatkan Ungkapan Boolean</a>
                    <a href="subtopik9.jsp">4.1.9 Menjana Laporan Berdasarkan Hasil Pertanyaan (Query)</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropbtn">Aktiviti
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="exercise_landing.jsp">Latihan</a>
                    <a href="ujian_landing.jsp">Ujian</a>
                </div>
            </div>
                <div class="dropdown">
                    <button class="dropbtn"><i class="fas fa-question"></i>&nbsp;<i class="fa fa-caret-down"></i></button>
                    <div class="dropdown-content">
                        <a href="FAQ.jsp">FAQ&nbsp;<i class="fas fa-question-circle"></i></a>
                        <a href="feedback.jsp">Maklum Balas&nbsp;<i class="fas fa-comments"></i></a>
                        <a href="reference.jsp">Pautan Rujukan&nbsp;<i class="fas fa-link"></i></a>
                    </div>
                </div>
<!--            <div class="navbar-center">
            <img src="images/logorawrr.png" alt="logo"></div>-->
            <div class="header-right">
            	<c:set var="un" value='<%= session.getAttribute("userID") %>'/>
            <c:choose>
            <c:when test="${un != null}"> 

                <a href="userViewServlet">Akaun&nbsp;<i class="fas fa-user-circle"></i></a>
                <a href="logoutServlet" value="logout">Log Keluar&nbsp;<i class="fas fa-sign-out-alt"></i></a>         
               </c:when>
            <c:otherwise>     
                <a href="login.jsp">Log Masuk&nbsp;<i class="fas fa-sign-in-alt"></i></a>              
            
            </c:otherwise>
             </c:choose> 
            </div>
            <a href="javascript:void(0);" class="icon" onclick="navFunction()"><i class="fas fa-bars"></i></a>   
        </div>  
        </header>
            <button onclick="topFunction()" id="topBtn" title="Go to top"><i class="fas fa-caret-up" aria-hidden="true"></i></button>
<script>
//Get the button
var mybutton = document.getElementById("topBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction();};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}

/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
function navFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "header-container") {
    x.className += " responsive";
  } else {
    x.className = "header-container";
  }
}
</script>