<%-- 
    Document   : login
    Created on : Nov 17, 2020, 10:26:46 AM
    Author     : Farah Athirah Binti Mohd Hanafiah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <%@ include file="jsp/meta.jsp"%>         
        <title>Login</title>
        <%@ include file="jsp/header.jsp"%> 
         
         <script>
// Get modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal close it
window.onclick = function(event) {
    if (event.target === modal) {
        modal.style.display = "none";
    }
}
</script>
  </head>
  <body>
  <div class="page-container">
      <div class="page-main">
          <div class="container2">      
        <div class="forms">
            <img src="images/front.png" alt="">
            <form method="POST" id="login" action="loginServlet" >
                
                <div style="color: #FF0000;">${errorMessage}</div>   
                <div style="color: black;">${successMessage}</div>  
                
                <i class="fa fa-user-circle"></i>
                <input type="text" name="username" id="username" placeholder="Nama Pengguna" required >

                <i class="fa fa-key"></i>
                <input type="password" name="password" id="password" placeholder="Password" required>
   
                <input type="submit" name="submit" value="Log Masuk">
                <input type="reset" value="Batal">

                <a href="registration_form.jsp" class="btn" ><span>Cipta Akaun Baru</span></a><br>
                <span onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Lupa Kata Laluan?</span> 
            </form>
        </div>
        
              </div>
          </div>  
  </div>
              <div id="id01" class="modal">
     
  <form class="modal-content2 animate" method="POST" action="loginServlet">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <h1>Terlupa Akaun</h1>
    </div>

    <div class="container3">
      <label for="Email">Emel</label>
      <input type="email" name="email" id="Email" placeholder="Emel@gmail.com"/>      
        
      <button type="submit" name="submit" value="forgotpassw">Hantar</button>
    </div>
  </form>
  </div>
      
  </body>
  <%@ include file="jsp/footer.jsp"%>
</html>