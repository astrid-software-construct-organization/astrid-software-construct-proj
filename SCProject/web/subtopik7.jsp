<%-- 
    Document   : subtopik7
    Created on : Nov 20, 2020, 4:15:38 AM
    Author     : Asha Dalila A18CS0038
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="jsp/meta.jsp"%>
        <title>4.1.7</title>
        <%@ include file="jsp/header.jsp"%>
    </head>
    <body>
        <div class="page-container">
            <div class="page-cont-row">
            <%@ include file="jsp/sidebar.jsp"%>       
<div class="wrapper">

  <h1>4.1.7 Penggunaan Pernyataan-pernyataan SQL</h1>
  <div class="wrap-1">
    <input type="radio" id="tab-1" name="tabs">
    <label for="tab-1"><div>Pengenalan</div><div class="cross"></div></label>
    <div class="content">
    <p>Perisian aplikasi Sistem Pengurusan Pangkalan Data (DBMS)
menggunakan arahan SQL untuk mencapai data dari rekod yang
disimpan dalam pangkalan. SQL mempunyai sintaks tertentu
yang mesti diikuti semasa digunakan. Sintaks merupakan set
peraturan yang menetapkan set perintah yang boleh digunakan
dan cara-cara menulis perintah-perintah dalam bentuk ayat agar
boleh difahami dan dilaksanakan oleh perisian aplikasi Sistem
Pengurusan Pangkalan Data (DBMS). Sintaks bagi SQL adalah
berasaskan sintaks dalam bahasa Inggeris. </p>
    <img src="materials/diagram7.1.png" alt="pengenalan7.1" class="center">
   
    </div>
  </div>
  <div class="wrap-2">
    <input type="radio" id="tab-2" name="tabs">
    <label for="tab-2"><div>Contoh Pernyataan <b>SELECT</b></div><div class="cross"></div></label>
    <div class="content">
        <p>Semua contoh pernyataan SELECT yang akan dibincangkan akan menggunakan entiti MURID seperti rajah di bawah</p>
        <img src="materials/diagram7.1.png" alt="pengenalan7.1" class="center">
        <p>Jadual-jadual di bawah menunjukkan keterangan dan contoh masing-masing untuk
            pernyataan <b>SELECT...</b>, pernyataan <b>SELECT...WHERE</b> dan pernyataan <b>SELECT...ORDER BY.</b></p>
        <ul style="list-style-type:none;">
            <li><img src="materials/diagram7.2.1.png" alt="CONTOH SELECT" class="center"></li>
            <li><img src="materials/diagram7.2.2.png" alt="CONTOH SELECT" class="center"></li>
            <li><img src="materials/diagram7.2.3.png" alt="CONTOH SELECT" class="center"></li>
            <li><img src="materials/diagram7.2.4.png" alt="CONTOH SELECT" class="center"></li>
        </ul>

    </div> 
  </div>

  <div class="wrap-3">
    <input type="radio" id="tab-3" name="tabs">
    <label for="tab-3"><div>Langkah-langkah menghasilkan pertanyaan (<i>query</i>) dengan menggunakan SQL <i class="fa fa-fw fa-play"></i></div><div class="cross"></div></label>
    <div class="content">
        <p>Pertanyaan (<i>query</i>) bermaksud pertanyaan kepada pangkalan data hubungan dalam bahasa
query untuk mencapai data dan maklumat yang disimpan dalamnya. Pernyataan SQL yang
telah anda pelajari ialah pertanyaan (<i>query</i>). </p>
        <p>Capaian data dan maklumat daripada pangkalan data yang dibina dengan perisian
aplikasi Microsoft Access dapat dilakukan dengan menggunakan arahan SQL. Pertanyaan
(<i>query</i>) dapat dihasilkan dengan menggunakan pernyataan-pernyataan SQL yang telah
anda pelajari. Rajah di bawah menunjukkan langkah-langkah menghasilkan pertanyaan (<i>query</i>)
dengan menggunakan arahan SQL.</p>
        <video  controls class="center">
            <source src="materials/video4.1.7.mp4" type="video/mp4">
        </video>
        <ol>
            <li>Klik <b>Create</b> di bar Menu,kemudian klik <b>Query Design</b></li>
            <li>Pilih entiti MURID dan klik <b>Add</b></li>
            <li>Jadual MURID telah ditambah</li>
            <li>Klik <b>View</b> dan pilih <b>SQL View</b></li>
            <li>Taip SELECT * FROM MURID dalam <b>Query1</b>. Kemudian klik <b>Run</b></li>
            <li>Data yang dicapai akan terpapar dalam <b>Query1</b>. Halakan kursor tetikus pada perkataan <b>Query1</b> dan klik kanan, kemudian klik <b>Save</b></li>
            <li>Tetingkap <b>Save As</b> terpapar. Tukarkan nama <b>Query1</b> kepada <b>PERTANYAAN 1</b> dan klik <b>OK</b></li>
            <li>Paparan berikut menunjukkan query SELECT * yang telah disimpan dan paparan data yang dicapai.</li>
        </ol>
    </div> 
  </div> 
</div>        
        </div>
        </div>
    </body>
    <%@ include file="jsp/footer.jsp"%>
</html>
