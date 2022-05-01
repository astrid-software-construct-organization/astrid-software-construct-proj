<%-- 
    Document   : ujian2
    Created on : Dec 9, 2020, 2:44:11 PM
    Author     : syazlyn
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
                alert("Please answer all question");
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
<html>
    <head>
        <%@ include file="jsp/meta.jsp"%>
       <title>Ujian</title>       
       <%@ include file="jsp/header.jsp"%>
    </head>
    
    <body>
         <div class="page-container">
        <div class="page-main">
           
      
            
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
  <div class="Upanels" >
  <div class="Upanel" id="one-panel" >
    <div class="panel-title" >Soalan 1</div>
    <img src="images/uji1.png" > <br>
      <br>  <label>Rajah 1 </label>
            <h3>Berdasarkan Rajah 1, adakah jenis data AutoNumber yang disetkan untuk ID_Murid<br> merupakan satu pilihan yang tepat?
      Pilih jawapan yang betul </h3>
      <h4><input type="radio" name="q1" value="A. Tidak tepat kerana tidak sesuai"> Tidak tepat kerana tidak sesuai <br>
          <input type="radio" name="q1" value="B. Tepat. ID_Murid merupakan data yang unik dan berbeza setiap barisan"> Tepat. ID_Murid merupakan data yang unik dan berbeza setiap barisan <br>
            <input type="radio" name="q1" value="C. Tepat. ID_Murid sesuai sebagai jenis data AutoNumber"> Tepat. ID_Murid sesuai sebagai jenis data AutoNumber </h4>
  </div>
      
  <div class="Upanel" id="two-panel">
    <div class="panel-title">Soalan 2</div>
      <h3>Berdasarkan Rajah 1, jika AutoNumber tidak digunakan, apakah jenis data lain yang sesuai?</h3><br>
      <h4> <input type="radio" name="q2" value="A. Jantina"> Jantina </h4>
      <h4>  <input type="radio" name="q2" value="B. Nama_Guru_Kelas"> Nama_Guru_Kelas  </h4>
      <h4> <input type="radio" name="q2" value="C. Nama_Murid"> Nama_Murid  </h4>
      <br>
      
  </div>
      
  <div class="Upanel" id="three-panel">
    <div class="panel-title">Soalan 3</div>
    <h3>Anda telah diberikan satu borang yang mengandungi maklumat seperti nama, jantina, nombor telefon dan alamat
            rumah. Pada pendapat anda, manakah yang paling sesuai untuk dijadikan kekunci
            primer? </h3><br>
            <h4><input type="radio" name="q3" value="A. Nama"> Nama </h4>
            <h4><input type="radio" name="q3" value="B. Nombor telefon"> Nombor telefon </h4>
            <h4><input type="radio" name="q3" value="C. Jantina"> Jantina </h4>
  </div>
  </div>
</div>
         
             <input type="hidden" id="setujian" name="setujian" value="2">          
         
            <div class="form-submit">
               <button  class="learn-more" ><span>Hantar Ujian</span></button>
                
            </div>
        </form>
        
        </div>
        </div>
    </body>
    <%@ include file="jsp/footer.jsp"%>
</html>