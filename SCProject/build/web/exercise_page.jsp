<%-- 
    Document   : exercise_page
    Created on : Dec 9, 2020, 9:59:22 PM
    Author     : Adawiyah Azzaharah Binti Zuraimi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${sessionScope.userID == null}">
<% response.sendRedirect(request.getContextPath() + "/login.jsp");%>
</c:if>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="jsp/meta.jsp"%>
        <title>Latihan</title>
        <%@ include file="jsp/header.jsp"%>
    </head>
    <body>
        <script>
            function validateForm() {
                if (document.forms["exerciseForm"]["q1"].value=== "") {
                alert("Please answer all question");
                return false;
                }
                if (document.forms["exerciseForm"]["q2"].value=== "") {
                alert("Please answer all question");
                return false;
                }
                if (document.forms["exerciseForm"]["q3"].value=== "") {
                alert("Please answer all question");
                return false;
                }
                if (document.forms["exerciseForm"]["q4"].value=== "") {
                alert("Please answer all question");
                return false;
                }
                if (document.forms["exerciseForm"]["q5"].value=== "") {
                alert("Please answer all question");
                return false;
                }
                if ((document.forms["exerciseForm"]["q6a"].value=== "")||(document.forms["exerciseForm"]["q6b"].value=== "")){
                alert("Please answer all question");
                return false;
                }
                if (document.forms["exerciseForm"]["q7"].value=== "") {
                alert("Please answer all question");
                return false;
                }
                if (document.forms["exerciseForm"]["q8"].value=== "") {
                alert("Please answer all question");
                return false;
                }
                if ((document.forms["exerciseForm"]["q9a"].value=== "")|| (document.forms["exerciseForm"]["q9b"].value==="")){
                alert("Please answer all question");
                return false;
                }
                if (document.forms["exerciseForm"]["q10"].value=== "") {
                alert("Please answer all question");
                return false;
                }
                if (document.forms["exerciseForm"]["q11"].value=== "") {
                alert("Please answer all question");
                return false;
                }
                if (document.forms["exerciseForm"]["q12"].value=== "") {
                alert("Please answer all question");
                return false;
                }
                if ((document.forms["exerciseForm"]["q13a"].value=== "")||(document.forms["exerciseForm"]["q13b"].value=== "")
                    ||(document.forms["exerciseForm"]["q13c"].value=== "")||(document.forms["exerciseForm"]["q13d"].value=== "")) {
                alert("Please answer all question");
                return false;
                }
            }
        </script>
        <div class="page-container">
            <div class="page-main">
        <div class="page-cont-col">
            
            <form name="exerciseForm" method="POST" class="exercise-question" id="exercise-question" onsubmit="return validateForm()" action="exerciseServlet">
            <h1>Uji Kendiri 4.1</h1>
                <label for="arahan"><h3>Pilih jawapan yang betul.</h3></label>
                <div class="q1" style='padding: 10px;'>
                    <label for="q1">1. ________________ merupakan fakta yang belum diproses.</label><br><br>
                        <input type='radio' name='q1' value='A' id='q1a' />A. Input<br>
                        <input type='radio' name='q1' value='B' id='q1b' />B. Data<br><%--jawapan--%>
                        <input type='radio' name='q1' value='C' id='q1c' />C. Output<br>
                </div>
                <div class="q2" style='padding: 10px;'>
                    <label for="q2">2. Pangkalan data ialah tempat pengumpulan dan penyimpanan data secara ________________ bagi sistem maklumat yang berasaskan komputer.</label><br><br>
                        <input type='radio' name='q2' value='A' id='q2a' />A. berperingkat<br>
                        <input type='radio' name='q2' value='B' id='q2b' />B. berpusat<br><%--jawapan--%>
                        <input type='radio' name='q2' value='C' id='q2c' />C. bertangga<br>
                </div>
                <div class="q3" style='padding: 10px;'>
                    <label for="q3">3. Entiti merujuk kepada suatu objek yang ________________ dan boleh dikenal pasti dalam persekitaran tertentu.</label><br><br>
                        <input type='radio' name='q3' value='A' id='q3a' />A. berlainan<br>
                        <input type='radio' name='q3' value='B' id='q3b' />B. berbeza<br>
                        <input type='radio' name='q3' value='C' id='q3c' />C. unik<br><%--jawapan--%>
                </div>
                <div class="q4" style='padding: 10px;'>
                    <label for="q4">4. Atribut merupakan ciri-ciri yang menerangkan sesuatu ________________ .</label><br><br>
                        <input type='radio' name='q4' value='A' id='q4a' />A. entiti<br><%--jawapan--%>
                        <input type='radio' name='q4' value='B' id='q4b' />B. data<br>
                        <input type='radio' name='q4' value='C' id='q4c' />C. objek<br>
                </div>
                <div class="q5" style='padding: 10px;'>
                    <label for="q5">5. Nyatakan dua kepentingan kekunci primer.<br>
                        <ol type="I">
                            <li>Tidak Memelihara integriti data</li>
                            <li>Mengelakkan pertindihan antara rekod lama dengan rekod baharu</li>
                            <li>Memastikan setiap rekod data yang disimpan mempunyai satu nilai unik sebagai pengenalan diri</li>
                            <li>Memenuhkan ruang storan komputer</li>
                        </ol>
                    </label>
                        <input type="radio" name="q5" value="A" id="5a">A. I dan IV<br>
                        <input type="radio" name="q5" value="B" id="5a">B. II dan III<br><%--jawapan--%>
                        <input type="radio" name="q5" value="C" id="5a">C. II, III dan IV<br>
                        <input type="radio" name="q5" value="D" id="5a">D. Semua di atas<br>
                </div>
                <div class="q6" style='padding: 10px;'>
                    <label for="q6a">6. (a) Nyatakan maksud kekardinalan dalam pangkalan data.<br>
                        <ol type="I">
                            <li>Kekardinalan merujuk kepada jenis perhubungan antara dua entiti dalam sesebuah organisasi.</li>
                            <li>Kekardinalan bermaksud menghubungkan satu entiti dengan satu objek.</li>
                            <li>Kekardinalan menyatakan bilangan hubungan yang boleh wujud antara dua entiti itu secara khusus.</li>
                            <li>Kekardinalan merujuk kepada bilangan pautan yang dapat dibentuk antara setiap rekod dalam sesuatu jadual entiti dengan rekod-rekod dalam jadual entiti yang lain dan sebaliknya.</li>
                        </ol>
                    </label>
                        <input type='radio' name='q6a' value='A' id='q6aa' />A. I dan II<br>
                        <input type='radio' name='q6a' value='B' id='q6ab' />B. I,II dan III<br>
                        <input type='radio' name='q6a' value='C' id='q6ac' />C. I,III dan IV<br><%--jawapan--%>
                        <input type='radio' name='q6a' value='D' id='q6ad' />D. Semua di atas<br><br>
                    <label for="q6b">&nbsp; &nbsp; &nbsp;(b) Berdasarkan situasi-situasi berikut, pilih jenis kekardinalan perhubungan entiti yang betul.</label>
                    <ol type="i">
                    <li>Seorang murid meminjam buku dari perpustakaan sekolah.</li>
                    <li>Seorang warganegara Malaysia boleh memiliki satu Pasport Malaysia Antarabangsa.</li></ol>
                    <table>
                        <tr><td><input type='radio' name='q6b' value='A' id='q6bia' />A.</td><td> <img src="images/6ba.PNG" alt="" style="width: 80%"></td></tr><%--jawapan--%>
                        <tr><td><input type='radio' name='q6b' value='B' id='q6bib' />B.</td><td> <img src="images/6bb.PNG" alt="" style="width: 80%"></td></tr>
                        <tr><td><input type='radio' name='q6b' value='C' id='q6bic' />C.</td><td> <img src="images/6bc.PNG" alt="" style="width: 80%"></td></tr>
                    </table>
                </div>
                <div class="q7" style='padding: 10px;'>
                    <label for="q7">7. Nyatakan objek-objek pangkalan data yang terdapat dalam perisian aplikasi Microsoft Access.</label><br>
                        <ol type="I">
                            <li>Jadual(<i>Table</i>)</li>
                            <li>Borang(<i>Form</i>)</li>
                            <li>Pertanyaan(<i>Query</i>)</li>
                            <li>Laporan(<i>Report</i>)</li>
                        </ol>
                        <input type='radio' name='q7' value='A' id='q7a' />A. I dan II<br>
                        <input type='radio' name='q7' value='B' id='q7b' />B. I,II dan III<br>
                        <input type='radio' name='q7' value='C' id='q7c' />C. I,II dan IV<br>
                        <input type='radio' name='q7' value='D' id='q7d' />D. Semua di atas<br><%--jawapan--%>
                </div>
                <div class="q8" style='padding: 10px;'>
                    <label for="q8">8. Nyatakan dua kegunaan utama borang (<i>form</i>) dalam pangkalan data.<br>
                        <ol type="I">
                            <li>Borang digunakan untuk memasukkan, mengubah suai dan memadamkan data serta rekod.</li>
                            <li>Borang mempunyai antara muka pengguna yang interaktif.</li>
                            <li>Borang digunakan untuk menyimpan data.</li>
                            <li>Borang mempunyai atribut-atribut entiti</li>
                        </ol>
                    </label>
                        <input type='radio' name='q8' value='A' id='q8a' />A. I dan II<br><%--jawapan--%>
                        <input type='radio' name='q8' value='B' id='q8b' />B. I,II dan III<br>
                        <input type='radio' name='q8' value='C' id='q8c' />C. I,II dan IV<br>
                        <input type='radio' name='q8' value='D' id='q8d' />D. II,III dan IV<br>
                </div>
                <div class="q9" style='padding: 10px;'>
                    <label for="q9a">9. (a) Apakah bahasa pertanyaan (<i>query</i>) yang digunakan untuk memanipulasi data-data dalam pangkalan data?</label><br><br>
                        <input type='radio' name='q9a' value='A' id='q9aa' />A. <i>Structured Query Language</i>(SQL)<br><%--jawapan--%>
                        <input type='radio' name='q9a' value='B' id='q9ab' />B. JAVA<br>
                        <input type='radio' name='q9a' value='C' id='q9ac' />C. Phyton<br><br>
                    <label for="q9b">&nbsp; &nbsp; &nbsp;(b) Nyatakan pernyataan-pernyataan yang telah anda pelajari<br>
                        <ol type="I">
                            <li>Pernyataan SELECT...WHICH</li>
                            <li>Pernyataan SELECT...FROM</li>
                            <li>Pernyataan SELECT...WHERE</li>
                            <li>Pernyataan SELECT...ORDER BY</li>
                        </ol>
                    </label>
                        <input type='radio' name='q9b' value='A' id='q9ba' />A. I,II dan III<br>
                        <input type='radio' name='q9b' value='B' id='q9bb' />B. I,II dan IV<br>
                        <input type='radio' name='q9b' value='C' id='q9bc' />C. I,III dan IV<br>
                        <input type='radio' name='q9b' value='D' id='q9bd' />D. II,III dan IV<br><%--jawapan--%>
                </div>
                <div class="q10" style='padding: 10px;'>
                    <label for="q10">10. Berdasarkan pertanyaan (<i>query</i>) di bawah, nyatakan semua jadual (<i>table</i>) dan atribut (<i>fields</i>) yang terlibat.</label><br><br>
                    <img src="images/ujikendiri1.PNG" alt="" style="width: 60%; margin-left:20%"><br><br>
                    <table border="1" style='border-collapse: collapse;background-color: white;width:100%'>
                        <tr><td style="text-align: left;padding: 8px;"></td><th style="text-align: left;padding: 8px;">Jadual(<i>table</i>)</th><th style="text-align: left;padding: 8px;">Atribut(<i>fields</i>)</th></tr>
                        <tr><td style="text-align: left;padding: 8px;"><input type='radio' name='q10' value='A' id='q10a' />A.</td><td style="text-align: left;padding: 8px;">MURID</td><td style="text-align: left;padding: 8px;">ID_murid,Nama_murid</td></tr>
                        <tr><td style="text-align: left;padding: 8px;"><input type='radio' name='q10' value='B' id='q10b' />B.</td><td style="text-align: left;padding: 8px;">MURID</td><td style="text-align: left;padding: 8px;">ID_Murid,Nama_Murid</td></tr><%--jawapan--%>
                        <tr><td style="text-align: left;padding: 8px;"><input type='radio' name='q10' value='C' id='q10c' />C.</td><td style="text-align: left;padding: 8px;">MURID</td><td style="text-align: left;padding: 8px;">id_murid,nama_murid</td></tr>
                    </table>
                </div>
                <div class="q11" style='padding: 10px;'>
                    <label for="q11">11. Pilih jadual kebenaran bagi ungkapan Boolean yang menggunakan operator OR dan operator AND.</label><br><br>
                        <img src="images/q11table.PNG" alt=""style="width: 60%; margin-left:20%"><br><br>
                    <table style="margin-left:13%;">
                        <tr><td><input type='radio' name='q11' value='A' id='q11a' />A.</td><td><img src="images/q11a.PNG" alt=""style="height: 100%;width:90%"></td>
                            <td><input type='radio' name='q11' value='B' id='q11b' />B.</td><td><img src="images/q11b.png" alt=""style="height: 100%;width:90%"></td><%--jawapan--%>
                            <td><input type='radio' name='q11' value='C' id='q11c' />C.</td><td><img src="images/q11c.png" alt=""style="height: 100%;width:90%"></td></tr>
                    </table>
                </div>
                <div class="q12" style='padding: 10px;'>
                    <label for="q12">12. Cara untuk menghasilkan laporan dengan mudah ialah dengan menjana laporan dengan menggunakan <i>Report Wizard</i>
                    </label><br><br>
                        <input type='radio' name='q12' value='A' id='q12a' />A. BETUL<br><%--jawapan--%>
                        <input type='radio' name='q12' value='B' id='q12b' />B. SALAH<br>
                </div>
                <div class="q13" style='padding: 10px;'>
                    <label for="q13">13. Berikut menunjukkan dua jadual bagi entiti BUTIR_MURID dan entiti BUTIR_PENJAGA.</label><br>
                    <img src="images/ujikendiri2.PNG" alt="" style="width:80%;margin-left: 8%;">
                    <p>Nyatakan benar atau salah bagi pertanyaan-pertanyaan (<i>queries</i>) berikut.</p>
                    <table>
                        <tr><td style='padding:10px;'>A)<br> <img src="images/ujikendiri3i.PNG" alt="" style="width:80%;"><br>
                        SELECT Nama_ibu, Nama_bapa FROM BUTIR_PENJAGA;<br><br>
                        <input type='radio' name='q13a' value='A' id='q13aa' />A. BETUL<br>
                        <input type='radio' name='q13a' value='B' id='q13ab' />B. SALAH<br><%--jawapan:SELECT Nama_Ibu, Nama_Bapa FROM BUTIR_PENJAGA;--%></td>
                            <td style='padding:10px;'>C)<br> <img src="images/ujikendiri3iii.PNG" alt="" style="width:80%;"><br>
                        SELECT ID_Murid, Nama, Kaum FROM BUTIR_MURID WHERE Kaum = “CINA”;<br><br>
                        <input type='radio' name='q13c' value='A' id='q13ca' />A. BETUL<br><%--jawapan--%>
                        <input type='radio' name='q13c' value='B' id='q13cb' />B. SALAH<br></td>
                        </tr>
                        <tr><td style='padding:10px;'>B)<br> <img src="images/ujikendiri3ii.PNG" alt="" style="width:80%;"><br>
                        SELECT ID_Murid, Nama, Kaum FROM BUTIR_MURID ORDER BY Nama ASC;<br><br>
                        <input type='radio' name='q13b' value='A' id='q13ba' />A. BETUL<br><%--jawapan--%>
                        <input type='radio' name='q13b' value='B' id='q13bb' />B. SALAH<br></td>
                            <td style='padding:10px;'>D)<br> <img src="images/ujikendiri3iiii.PNG" alt="" style="width:80%;"><br>
                        SELECT Nama, Jantina, Kaum FROM BUTIR_MURID WHERE Jantina = “LELAKI” ORDER BY Nama ASC;<br><br>
                        <input type='radio' name='q13d' value='A' id='q13da' />A. BETUL<br><%--jawapan--%>
                        <input type='radio' name='q13d' value='B' id='q13db' />B. SALAH<br></td>
                        </tr>
                    </table>
                </div>
                <div class="form-submit">
                        <button class="learn-more"><span>Hantar Latihan</span></button>
                </div>
            </form>
        </div>
            </div>   
        </div>
    </body>
    <%@ include file="jsp/footer.jsp"%>
</html>
