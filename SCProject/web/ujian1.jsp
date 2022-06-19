<%-- 
    Document   : examquestion
    Created on : Nov 17, 2020, 3:05:15 PM
    Author     : Fara Syazlyn
--%>
<script>
    function validateForm() {
                if (document.forms["ujian-question"]["q1"].value=== "") {
                alert("Please answer all question");
                return false;
                }
                if (document.forms["ujian-question"]["q2"].value=== "") {
                alert("Please answer all question");
                return false;
                }
                   if (document.forms["ujian-question"]["q3"].value=== "") {
                alert("Sila jawab semua soalan.");
                return false;
                }
    }
    </script>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${sessionScope.userID == null}">
<% response.sendRedirect(request.getContextPath() + "/login.jsp");%>
</c:if>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="jsp/meta.jsp"%>
       <title>Ujian</title>       
       <%@ include file="jsp/header.jsp"%>
    </head> 
    <body>
          <div class="page-container">
        <div class="page-main">
           
<!--            <h1 style="text-align: center">UJIAN SET 1</h1> <br><br>-->
    
        <form  name="ujian-question" method="post" class="ujian-question" id="ujian-question" onsubmit="return validateForm()" action="UjianServlet">
    <div class="ujian-warpper">
  <input class="radio" id="one" name="group" type="radio" checked>
  <input class="radio" id="two" name="group" type="radio">
  <input class="radio" id="three" name="group" type="radio">
  <div class="tabs">
  <label class="tab" id="one-tab" for="one">Soalan 1</label>
  <label class="tab" id="two-tab" for="two">Soalan 2</label>
  <label class="tab" id="three-tab" for="three">Soalan 3</label>
    </div>
  <div class="Upanels">
  <div class="Upanel" id="one-panel">
    <div class="panel-title">Soalan 1</div>
     <h3> Anda telah diberikan satu borang yang mengandungi maklumat seperti nama, jantina, nombor telefon dan alamat
            rumah. Pada pendapat anda, manakah yang paling sesuai untuk dijadikan kekunci
            primer? </h3>
            <h4><input type="radio" name="q1" value="A. Nama"> Nama </h4>
            <h4><input type="radio" name="q1" value="B. Jantina"> Jantina </h4>
            <h4><input type="radio" name="q1" value="C. Nombor telefon"> Nombor telefon </h4>
            <h4><input type="radio" name="q1" value="D. Alamat Rumah"> Alamat Rumah </h4>
  </div>
      
  <div class="Upanel" id="two-panel">
    <div class="panel-title">Soalan 2</div>
    <h3>Pangkalan data yang menghasilkan sistem maklumat yang efisien direka bentuk melalui beberapa
        fasa. Pilih fasa-fasa dalam pembangunan sistem maklumat yang SALAH.</h3>
                <h4><input type="radio" name="q2" value="A. Fasa Penciptaan"> Fasa Penciptaan </h4>
            <h4><input type="radio" name="q2" value="B. Fasa Pengujian"> Fasa Pengujian </h4>
            <h4><input type="radio" name="q2" value="C. Fasa Dokumentasi"> Fasa Dokumentasi </h4>
            <h4><input type="radio" name="q2" value="D. Fasa Analisis"> Fasa Analisis </h4> <br>
  </div>
      
  <div class="Upanel" id="three-panel">
    <div class="panel-title">Soalan 3</div>
    <h3>Nyatakan entiti dan atribut-atribut yang wujud dalam persekitaran pusat sumber sekolah <br>

                I. Buku<br>                   
                II. Sinki<br>
                III. Meja<br>
                IV. Sirkulasi<br>

            </h3>
            <h4><input type="radio" name="q3" value="A. I,II"> I,II </h4>
            <h4><input type="radio" name="q3" value="B. I,II dan III"> I,II dan III </h4>
           <h4> <input type="radio" name="q3" value="C. I, III dan IV"> I, III dan IV </h4>
  </div>
  </div>
</div>
            
             <input type="hidden" id="setujian" name="setujian" value="1">
           
            <div class="form-submit">
                <button  class="learn-more" ><span>Hantar Ujian</span></button>

  

             </div>  

        </div>
                    
          </div>
        
        
    </body>
    <%@ include file="jsp/footer.jsp"%>
</html>
