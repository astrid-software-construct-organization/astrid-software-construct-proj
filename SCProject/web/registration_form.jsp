<%-- 
    Document   : newjsp
    Created on : Nov 23, 2020, 10:10:31 AM
    Author     : Farah Athirah Binti Mohd Hanafiah
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="jsp/meta.jsp"%> 
        <title>Registration Page</title>
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
 
    </head>
    <body>
        <div class="page-container">
        <div class="page-main">  
          <div class="container2">
        <div class="forms">
            <img src="images/front.png" alt="">
            <h2>Daftar Akaun</h2>
            <form method="POST" id="login" action="userRegisterServlet" onsubmit="return validateForm()">
            <div style="color: #FF0000;">${errorMessage}</div> 
            <i class="fa fa-user-circle"></i>
            <input type="text" name="username" id="username" placeholder="Nama Pengguna" required />            
            
            <i class="fa fa-user "></i>
            <input type="text" name="name" id="name" placeholder="Nama Penuh" onkeyup="this.value = this.value.toUpperCase();" required >
            
            <i class="fa fa-envelope"></i>
            <input type="email" name="email" placeholder="Emel" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="emel hendaklah mengikut format contoh:john123@gmail.com">
            
            <i class="fa fa-key"></i>
            <input type="password" name="password" id="password" placeholder="Password" required onkeyup='check();'>
            
            <i class="fa fa-key"></i>
            <input type="password" name="re-passw" id="re-passw" placeholder="Confirm password" required onkeyup='check();'/><span id='message'></span> 
            <br><br>
            <input type="submit" value="Daftar">
            <input type="reset" value="Batal">
            <a href="login.jsp" class="btn" ><span>Log Masuk?</span></a>
            </form>
        </div>
              </div>
          </div>
          </div>  
        </div>
    </body>
  <%@ include file="jsp/footer.jsp"%>
</html>
