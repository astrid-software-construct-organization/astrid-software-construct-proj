<%-- 
    Document   : forgot_password
    Created on : Jan 1, 2021, 3:57:50 PM
    Author     : Farah Athirah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="jsp/meta.jsp"%> 
        <title>Change Password Page</title>
        <%@ include file="jsp/header.jsp"%> 
        <script>
function validateForm(){
    var pw = document.getElementById('password').value;
    var rpw = document.getElementById('re-passw').value;
    if (pw !== rpw){
        alert("Sila masukkan kata laluan semula");
        return false;
     }
    else if(pw.length < 6){
       alert("Sila pastikan panjang kata laluan melebihi 6");
        return false; 
    } 
        return true;
}

var check = function() {
  if (document.getElementById('password').value ===
    document.getElementById('re-passw').value) {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = 'padan';
  } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'tidak padan';
  }
};

 </script> 
    <body>
        <div class="page-container">
        <div class="page-main"> 
        <div class="containerreset">
         <div class="fpreset">
             <h1>Ubah Kata Laluan</h1>
         </div>
        <div class="formreset">
        <form method="post" action="loginServlet">
         
        <input type="email" name="email" value="${email}">
        
        <i class="fa fa-key"></i>
        <input type="password" name="password" id="password" placeholder="Password" required onkeyup='check();'>

        <i class="fa fa-key"></i>
        <input type="password" name="re-passw" id="re-passw" placeholder="Confirm password" required onkeyup='check();'/><span id='message'></span> 

        <br><br>
        <input type="submit" name="submit" value="Tukar Kata Laluan">
        <input type="reset" value="Reset">

        </form>
          </div>
        </div>
        </div>
        </div>
    </body>
    <%@ include file="jsp/footer.jsp"%>
</html>
