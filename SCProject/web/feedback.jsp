<%-- 
    Document   : feedback
    Created on : Jan 14, 2021, 6:24:44 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="jsp/meta.jsp"%>
        <title>Maklum Balas Pengguna</title>
        <%@ include file="jsp/header.jsp"%>
    </head>
    <script>
                function validate(){
                if (document.forms["feedbackForm"]["q1"].value=== "") {
                alert("Sila jawab soalan 1");
                return false;
                }
                if (document.forms["feedbackForm"]["q2"].value=== "") {
                alert("Sila jawab soalan 2");
                return false;
                }
                if (document.forms["feedbackForm"]["q3"].value=== "") {
                alert("Sila jawab soalan 3");
                return false;
                }
                if (document.forms["feedbackForm"]["q5"].value=== "") {
                alert("Sila jawab soalan 5");
                return false;
                }
            }
    </script>
    <body>
        <div class="page-container">
        <div class="page-main"> 
            <div class="page-cont-row">
                
                <form class="feedbackform" method="POST" name="feedbackForm" action="feedbackServlet" onsubmit="return validate()">
                        <h2>Maklum balas pengguna</h2>
                        
                        <label for="que1">1.Adakah anda berpuas hati dengan kualiti nota yang disediakan oleh kami</label><br>
                        <input type='radio' name='q1' value='puas hati' id='q1a' />Puas Hati<br>
                        <input type='radio' name='q1' value='tidak puas hati' id='q1b' />Tidak berpuas hati<br><br>
                        
                        <label for="que2">2.Adakan anda tertarik dengan visual laman web kami?</label><br>
                        <input type='radio' name='q2' value='menarik' id='q2a' />Menarik<br>
                        <input type='radio' name='q2' value='tidak menarik' id='q2b' />Tidak menarik<br><br>
                        
                        <label for="que3" >3.Adakah mudah untuk menavigasi laman web kami?</label><br>
                        <input type='radio' name='q3' value='puas hati' id='q3a' />Mudah<br>
                        <input type='radio' name='q3' value='tidak puas hati' id='q3b' />Tidak mudah<br><br>
                        
                        <label for="que4">4.Adakah anda mempunyai masalah menggunakan web kami?</label><br><br>
                        <input type="text" class="que4" name="q4" placeholder="Masalah dihadapi"><br><br>
                        
                        <label for="que5">5. Dalam skala 1 hingga 5. Berapa banyak anda menilai web kami?</label><br> 
                        <div class="stars">
                        <input class="star star-5" id="star-5" value="5" type="radio" name="q5"/>
                        <label class="star star-5" for="star-5"></label>
                        <input class="star star-4" id="star-4" value="4" type="radio" name="q5"/>
                        <label class="star star-4" for="star-4"></label>
                        <input class="star star-3" id="star-3" value="3" type="radio" name="q5"/>
                        <label class="star star-3" for="star-3"></label>
                        <input class="star star-2" id="star-2" value="2" type="radio" name="q5"/>
                        <label class="star star-2" for="star-2"></label>
                        <input class="star star-1" id="star-1" value="1" type="radio" name="q5"/>
                        <label class="star star-1" for="star-1"></label>
                        </div>
                        
                        <br>
                        <button type="submit" class="del">Teruskan</button>
                        <button type="reset" class="del">Batal</button>
                    </form>
              
            </div>
        </div>
        </div>
    </body>
</html>
