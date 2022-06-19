<%-- 
    Document   : ujian3
    Created on : Dec 17, 2020, 11:27:15 PM
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
           
  
    
        
        <form name="ujian-question" method="post" class="ujian-question" id="ujian-question" onsubmit="return validateForm()" action="UjianServlet">
            
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
    <h3>Pilih kegunaan utama borang (form) dalam pangkalan data yang SALAH.  </h3><br>
       <h4><input type="radio" name="q1" value="A. Mengubah data daripada pertanyaan"> Mengubah data daripada pertanyaan </h4>
       <h4><input type="radio" name="q1" value="B. Merupakan antara muka antara pengguna dan komputer"> Merupakan antara muka antara pengguna dan komputer </h4>
       <h4><input type="radio" name="q1" value="C. Mengehadkan kemasukan data"> Mengehadkan kemasukan data </h4>
       <h4><input type="radio" name="q1" value="D. Mengubah data yang dipaparkan melalui satu borang"> Mengubah data yang dipaparkan melalui satu borang </h4>
            
  </div>
      
  <div class="Upanel" id="two-panel">
    <div class="panel-title">Soalan 2</div>
      <h3>Pilih jawapan yang SALAH. </h3><br>
      <h4><input type="radio" name="q2" value="A. Kekunci primer ialah atribut dengan nilai unik"> Kekunci primer ialah atribut dengan nilai unik  </h4>
      <h4><input type="radio" name="q2" value="B. Kekunci asing ialah atribut yang merupakan kekunci primer bagi satu jadual hubungan yang lain"> Kekunci asing ialah atribut yang merupakan kekunci primer bagi satu jadual hubungan yang lain </h4>
      <h4><input type="radio" name="q2" value="C. Kekunci asing mengaitkan dua atau lebih entiti yang mempunyai hubungan"> Kekunci asing mengaitkan dua atau lebih entiti yang mempunyai hubungan </h4>
      <h4><input type="radio" name="q2" value="D. Kekunci primer boleh mengandungi data yang berulang/sama/ditinggalkan kosong(null)"> Kekunci primer boleh mengandungi data yang berulang/sama/ditinggalkan kosong(null) </h4>
      
  </div>
      
  <div class="Upanel" id="three-panel">
    <div class="panel-title">Soalan 3</div>
    <h3>Nyatakan entiti dan atribut-atribut yang wujud dalam persekitaran pusat sumber <br>sekolah </h3>
    <h4>I. Sirkulasi <br>                 
        II. Meja <br>
        III. Buku <br>
        IV. Rak buku <br></h4>
    <h4><input type="radio" name="q3" value="A. II dan III sahaja"> II dan III sahaja <br>
        <input type="radio" name="q3" value="B. III sahaja"> III sahaja <br>
        <input type="radio" name="q3" value="C. II,III, dan IV"> II,III, dan IV <br>
             <input type="radio" name="q3" value="D. I,II,III, dan IV"> I,II,III, dan IV </h4>
  </div>
  </div>
</div>  
             <input type="hidden" id="setujian" name="setujian" value="3">          
         
            <div class="form-submit">
               <button  class="learn-more" ><span>Hantar Ujian</span></button>
                
            </div>
        </form>
        
        </div>
        </div>
    </body>
    <%@ include file="jsp/footer.jsp"%>
</html>