<%-- 
    Document   : exercise_review
    Created on : Dec 15, 2020, 4:02:12 PM
    Author     : Adawiyah Azzaharah Binti Zuraimi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="jsp/meta.jsp"%>
        <title>Semakan Latihan</title>
        <%@ include file="jsp/header.jsp"%>
    </head>
    <body>
        <div class="page-container">
            <div class="page-main">
        <div class="page-cont-col">
            <div class="exercise-review">
                <h1>Semakan Latihan</h1>
                <h3>Markah anda ialah ${tm}/18</h3>
                <table class="semakan-latihan">
                    <tr><td>SOALAN 1</td><td>1. ________________ merupakan fakta yang belum diproses.
                                            <ol type="A">
                                                <li>Input</li>
                                                <li>Data</li>
                                                <li>Output</li>
                                            </ol>
                                    </td></tr>
                    <tr><td>JAWAPAN </td><td><% out.println("Jawapan anda :");
                                                String res1 = (String)request.getAttribute("jwp1");
                                                if (res1.contains("BETUL!")== true){%><p style="color:green">${jwp1}</p>
                                                <%}else {%><p style="color:red">${jwp1}</p>
                                                <%} out.println("Jawapannya ialah B. Data");%>
                                    </td></tr>
                    <tr><td>SOALAN 2</td><td>2. Pangkalan data ialah tempat pengumpulan dan penyimpanan data secara ________________ bagi sistem maklumat yang berasaskan komputer.
                                            <ol type="A">
                                                <li>berperingkat</li>
                                                <li>berpusat</li>
                                                <li>bertangga</li>
                                            </ol>
                                    </td></tr>
                    <tr><td>JAWAPAN </td><td><% out.println("Jawapan anda :");
                                                String res2 = (String)request.getAttribute("jwp2");
                                                if (res2.contains("BETUL!")== true){%><p style="color:green">${jwp2}</p>
                                                <%}else {%><p style="color:red">${jwp2}</p>
                                                <%} out.println("Jawapannya ialah B. berpusat");%>
                                    </td></tr>
                    <tr><td>SOALAN 3</td><td>3. Entiti merujuk kepada suatu objek yang ________________ dan boleh dikenal pasti dalam persekitaran tertentu.
                                            <ol type="A">
                                                <li>berlainan</li>
                                                <li>berbeza</li>
                                                <li>unik</li>
                                            </ol>
                                    </td></tr>
                    <tr><td>JAWAPAN </td><td><% out.println("Jawapan anda :");
                                                String res3 = (String)request.getAttribute("jwp3");
                                                if (res3.contains("BETUL!")== true){%><p style="color:green">${jwp3}</p>
                                                <%}else {%><p style="color:red">${jwp3}</p>
                                                <%} out.println("Jawapannya ialah C. unik");%>
                                    </td></tr>
                    <tr><td>SOALAN 4</td><td>4. Atribut merupakan ciri-ciri yang menerangkan sesuatu ________________ .
                                            <ol type="A">
                                                <li>entiti</li>
                                                <li>data</li>
                                                <li>objek</li>
                                            </ol>
                                    </td></tr>
                    <tr><td>JAWAPAN </td><td><% out.println("Jawapan anda :");
                                                String res4 = (String)request.getAttribute("jwp4");
                                                if (res4.contains("BETUL!")== true){%><p style="color:green">${jwp4}</p>
                                                <%}else {%><p style="color:red">${jwp4}</p>
                                                <%} out.println("Jawapannya ialah A. entiti");%>
                                    </td></tr>
                    <tr><td>SOALAN 5</td><td>5. Nyatakan dua kepentingan kekunci primer.<br>
                                            <ol type="I">
                                                <li>Tidak Memelihara integriti data</li>
                                                <li>Mengelakkan pertindihan antara rekod lama dengan rekod baharu</li>
                                                <li>Memastikan setiap rekod data yang disimpan mempunyai satu nilai unik sebagai pengenalan diri</li>
                                                <li>Memenuhkan ruang storan komputer</li>
                                            </ol>
                                            <ol type="A">
                                                <li>I dan IV</li>
                                                <li>II dan III</li>
                                                <li>II,III dan IV</li>
                                                <li>Semua di atas.</li>
                                            </ol>
                                    </td></tr>
                    <tr><td>JAWAPAN</td><td><% out.println("Jawapan anda :");
                                                String res5 = (String)request.getAttribute("jwp5");
                                                if (res5.contains("BETUL!")== true){%><p style="color:green">${jwp5}</p>
                                                <%}else {%><p style="color:red">${jwp5}</p>
                                                <%} out.println("Jawapannya ialah B. II dan III");%>
                                    </td></tr>
                    <tr><td>SOALAN 6(a) </td><td>6. (a) Nyatakan maksud kekardinalan dalam pangkalan data.<br>
                                            <ol type="I">
                                                <li>Kekardinalan merujuk kepada jenis perhubungan antara dua entiti dalam sesebuah organisasi.</li>
                                                <li>Kekardinalan bermaksud menghubungkan satu entiti dengan satu objek.</li>
                                                <li>Kekardinalan menyatakan bilangan hubungan yang boleh wujud antara dua entiti itu secara khusus.</li>
                                                <li>Kekardinalan merujuk kepada bilangan pautan yang dapat dibentuk antara setiap rekod dalam sesuatu jadual entiti dengan rekod-rekod dalam jadual entiti yang lain dan sebaliknya.</li>
                                            </ol>
                                            <ol type="A">
                                                <li>I dan II</li>
                                                <li>I,II dan III</li>
                                                <li>I,III dan IV</li>
                                                <li>Semua di atas.</li>
                                            </ol>
                                    </td></tr>
                    <tr><td>JAWAPAN </td><td><% out.println("Jawapan anda :");
                                                String res6 = (String)request.getAttribute("jwp6");
                                                if (res6.contains("BETUL!")== true){%><p style="color:green">${jwp6}</p>
                                                <%}else {%><p style="color:red">${jwp6}</p>
                                                <%} out.println("Jawapannya ialah C. I,III dan IV");%>
                                    </td></tr>
                    <tr><td>SOALAN 6(b)</td><td>6. (b) Berdasarkan situasi-situasi berikut, pilih jenis kekardinalan perhubungan entiti yang betul.
                                            <ol type="i">
                                                <li>Seorang murid meminjam buku dari perpustakaan sekolah.</li>
                                                <li>Seorang warganegara Malaysia boleh memiliki satu Pasport Malaysia Antarabangsa.</li>
                                            </ol>
                                    </td></tr>
                    <tr><td>JAWAPAN </td><td><% out.println("Jawapan anda :");
                                                String res7 = (String)request.getAttribute("jwp7");
                                                if (res7.contains("BETUL!")== true){%><p style="color:green">${jwp7}</p>
                                                <%}else {%><p style="color:red">${jwp7}</p>
                                                <%} out.println("Jawapannya ialah A. ");%>
                                                <img src="images/6ba.PNG" alt="" style="width: 90%">
                                    </td></tr>
                    <tr><td>SOALAN 7</td><td>7. Nyatakan objek-objek pangkalan data yang terdapat dalam perisian aplikasi Microsoft Access.<br>
                                            <ol type="I">
                                                <li>Jadual(<i>Table</i>)</li>
                                                <li>Borang(<i>Form</i>)</li>
                                                <li>Pertanyaan(<i>Query</i>)</li>
                                                <li>Laporan(<i>Report</i>)</li>
                                            </ol>
                                            <ol type="A">
                                                <li>I dan II</li>
                                                <li>I,II dan III</li>
                                                <li>I,II dan IV</li>
                                                <li>Semua di atas.</li>
                                            </ol>
                                    </td></tr>
                    <tr><td>JAWAPAN </td><td><% out.println("Jawapan anda :");
                                                String res8 = (String)request.getAttribute("jwp8");
                                                if (res8.contains("BETUL!")== true){%><p style="color:green">${jwp8}</p>
                                                <%}else {%><p style="color:red">${jwp8}</p>
                                                <%} out.println("Jawapannya ialah D. Semua di atas");%>
                                    </td></tr>
                    <tr><td>SOALAN 8</td><td>8. Nyatakan dua kegunaan utama borang (<i>form</i>) dalam pangkalan data.<br>
                                            <ol type="I">
                                                <li>Borang digunakan untuk memasukkan, mengubah suai dan memadamkan data serta rekod.</li>
                                                <li>Borang mempunyai antara muka pengguna yang interaktif.</li>
                                                <li>Borang digunakan untuk menyimpan data.</li>
                                                <li>Borang mempunyai atribut-atribut entiti</li>
                                            </ol>
                                            <ol type="A">
                                                <li>I dan II</li>
                                                <li>I,II dan III</li>
                                                <li>I,III dan IV</li>
                                                <li>II,III dan IV</li>
                                            </ol>
                                    </td></tr>
                    <tr><td>JAWAPAN </td><td><% out.println("Jawapan anda :");
                                                String res9 = (String)request.getAttribute("jwp9");
                                                if (res9.contains("BETUL!")== true){%><p style="color:green">${jwp9}</p>
                                                <%}else {%><p style="color:red">${jwp9}</p>
                                                <%} out.println("Jawapannya ialah A. I dan II");%>
                                    </td></tr>
                    <tr><td>SOALAN 9(a)</td><td>9. (a) Apakah bahasa pertanyaan (<i>query</i>) yang digunakan untuk memanipulasi data-data dalam pangkalan data?
                                            <ol type="A">
                                                <li><i>Structured Query Language</i>(SQL)</li>
                                                <li>JAVA</li>
                                                <li>Phyton</li>
                                            </ol>
                                    </td></tr>
                    <tr><td>JAWAPAN </td><td><% out.println("Jawapan anda :");
                                                String res10 = (String)request.getAttribute("jwp10");
                                                if (res10.contains("BETUL!")== true){%><p style="color:green">${jwp10}</p>
                                                <%}else {%><p style="color:red">${jwp10}</p>
                                                <%} out.println("Jawapannya ialah A. <i>Structured Query Language</i>(SQL)");%>
                                    </td></tr>
                    <tr><td>SOALAN 9(b)</td><td>9. (b) Nyatakan pernyataan-pernyataan yang telah anda pelajari<br>
                                            <ol type="I">
                                                <li>Pernyataan SELECT...WHICH</li>
                                                <li>Pernyataan SELECT...FROM</li>
                                                <li>Pernyataan SELECT...WHERE</li>
                                                <li>Pernyataan SELECT...ORDER BY</li>
                                            </ol>
                                            <ol type="A">
                                                <li>I,II dan III</li>
                                                <li>I,II dan IV</li>
                                                <li>I,III dan IV</li>
                                                <li>II,III dan IV</li>
                                            </ol>
                                    </td></tr>
                    <tr><td>JAWAPAN </td><td><% out.println("Jawapan anda :");
                                                String res11 = (String)request.getAttribute("jwp11");
                                                if (res11.contains("BETUL!")== true){%><p style="color:green">${jwp11}</p>
                                                <%}else {%><p style="color:red">${jwp11}</p>
                                                <%} out.println("Jawapannya ialah D. II,III dan IV");%>
                                    </td></tr>
                    <tr><td>SOALAN 10</td><td>10. Berdasarkan pertanyaan (<i>query</i>) di bawah, nyatakan semua jadual (<i>table</i>) dan atribut (<i>fields</i>) yang terlibat.</label><br><br>
                                              <img src="images/ujikendiri1.PNG" alt="" style="width: 60%; margin-left:20%"><br><br>
                                              <table border="1" width=auto>
                                              <tr style="background-color: #FAFAFB;"><td></td><th>Jadual(<i>table</i>)</th><th>Atribut(<i>fields</i>)</th></tr>
                                              <tr><td>A.</td><td>MURID</td><td>ID_murid,Nama_murid</td></tr>
                                              <tr style="background-color: #FAFAFB;"><td>B.</td><td>MURID</td><td>ID_Murid,Nama_Murid</td></tr><%--jawapan--%>
                                              <tr><td>C.</td><td>MURID</td><td>id_murid,nama_murid</td></tr>
                                              </table><br><br>
                                    </td></tr>
                    <tr><td>JAWAPAN </td><td><% out.println("Jawapan anda :");
                                                String res12 = (String)request.getAttribute("jwp12");
                                                if (res12.contains("BETUL!")== true){%><p style="color:green">${jwp12}</p>
                                                <%}else {%><p style="color:red">${jwp12}</p>
                                                <%} out.println("Jawapannya ialah B. MURID.....ID_Murid,Nama_Murid");%>
                                    </td></tr>
                    <tr><td>SOALAN 11</td><td>11. Pilih jadual kebenaran bagi ungkapan Boolean yang menggunakan operator OR dan operator AND.</label><br><br>
                                              <img src="images/q11table.PNG" alt=""style="width: 60%; margin-left:20%"><br><br>
                                    </td></tr>
                    <tr><td>JAWAPAN </td><td><% out.println("Jawapan anda :");
                                                String res13 = (String)request.getAttribute("jwp13");
                                                if (res13.contains("BETUL!")== true){%><p style="color:green">${jwp13}</p>
                                                <%}else {%><p style="color:red">${jwp13}</p>
                                                <%} out.println("Jawapannya ialah B. ");%>
                                                <img src="images/q11b.png" alt=""style="height: 70%;width:20%">
                                    </td></tr>
                    <tr><td>SOALAN 12</td><td>12. Cara untuk menghasilkan laporan dengan mudah ialah dengan menjana laporan dengan menggunakan <i>Report Wizard</i><br>A. BETUL<br>B. SALAH<br><br></td></tr>
                    <tr><td>JAWAPAN </td><td><% out.println("Jawapan anda :");
                                                String res14 = (String)request.getAttribute("jwp14");
                                                if (res14.contains("BETUL!")== true){%><p style="color:green">${jwp14}</p>
                                                <%}else {%><p style="color:red">${jwp14}</p>
                                                <%} out.println("Jawapannya ialah A. BETUL");%>
                                    </td></tr>
                    <tr><td>SOALAN 13(a)</td><td>13. Berikut menunjukkan dua jadual bagi entiti BUTIR_MURID dan entiti BUTIR_PENJAGA.</label><br>
                                              <img src="images/ujikendiri2.PNG" alt="" style="width:80%;margin-left: 8%;">
                                              <p>Nyatakan benar atau salah bagi pertanyaan-pertanyaan (queries) berikut.</p><br>
                                              A)<br> <img src="images/ujikendiri3i.PNG" alt="" style="width:50%;"><br>
                                              SELECT Nama_ibu, Nama_bapa FROM BUTIR_PENJAGA;<br>A. BETUL<br>B. SALAH<br><br>
                                    </td></tr>
                    <tr><td>JAWAPAN </td><td><% out.println("Jawapan anda :");
                                                String res15 = (String)request.getAttribute("jwp15");
                                                if (res15.contains("BETUL!")== true){%><p style="color:green">${jwp15}</p>
                                                <%}else {%><p style="color:red">${jwp15}</p>
                                                <%} out.println("Jawapannya ialah B. SALAH");%>
                                                <br>Pernyataan yang betul ialah :<br>SELECT Nama_Ibu, Nama_Bapa FROM BUTIR_PENJAGA;<br>
                                    </td></tr>
                    <tr><td>SOALAN 13(b)</td><td>B)<br> <img src="images/ujikendiri3ii.PNG" alt="" style="width:50%;"><br>
                                              SELECT ID_Murid, Nama, Kaum FROM BUTIR_MURID ORDER BY Nama ASC;<br>A. BETUL<br>B. SALAH<br><br>
                                    </td></tr>
                    <tr><td>JAWAPAN </td><td><% out.println("Jawapan anda :");
                                                String res16 = (String)request.getAttribute("jwp16");
                                                if (res16.contains("BETUL!")== true){%><p style="color:green">${jwp16}</p>
                                                <%}else {%><p style="color:red">${jwp16}</p>
                                                <%} out.println("Jawapannya ialah A. BETUL");%>
                                    </td></tr>
                    <tr><td>SOALAN 13(c)</td><td>C)<br> <img src="images/ujikendiri3iii.PNG" alt="" style="width:50%;"><br>
                                              SELECT ID_Murid, Nama, Kaum FROM BUTIR_MURID WHERE Kaum = “CINA”;<br>A. BETUL<br>B. SALAH<br><br>
                                    </td></tr>
                    <tr><td>JAWAPAN </td><td><% out.println("Jawapan anda :");
                                                String res17 = (String)request.getAttribute("jwp17");
                                                if (res17.contains("BETUL!")== true){%><p style="color:green">${jwp17}</p>
                                                <%}else {%><p style="color:red">${jwp17}</p>
                                                <%} out.println("Jawapannya ialah A. BETUL");%>
                                    </td></tr>
                    <tr><td>SOALAN 13(d)</td><td>D)<br> <img src="images/ujikendiri3iiii.PNG" alt="" style="width:50%;"><br>
                                              SELECT Nama, Jantina, Kaum FROM BUTIR_MURID WHERE Jantina = “LELAKI” ORDER BY Nama ASC;<br>A. BETUL<br>B. SALAH<br><br>
                                    </td></tr>
                    <tr><td>JAWAPAN </td><td><% out.println("Jawapan anda :");
                                                String res18 = (String)request.getAttribute("jwp18");
                                                if (res18.contains("BETUL!")== true){%><p style="color:green">${jwp18}</p>
                                                <%}else {%><p style="color:red">${jwp18}</p>
                                                <%} out.println("Jawapannya ialah A. BETUL");%>
                                    </td></tr>
                </table>
                <div class="form-submit">
                     <button class="learn-more" onclick="goBack()"><span>Kembali</span></button>
                    <button class="learn-more" onclick="document.location='exercise_page.jsp'"><span>Cuba Latihan Semula</span></button>
                </div>
            </div>
        </div>
            </div>   
        </div>
<script>
function goBack() {
  window.history.back();
}
</script>                                    
    </body>
    <%@ include file="jsp/footer.jsp"%>
</html>    
