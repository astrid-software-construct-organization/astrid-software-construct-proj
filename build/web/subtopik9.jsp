<%-- 
    Document   : subtopik9
    Created on : Nov 20, 2020, 4:16:01 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="jsp/meta.jsp"%>
        <title>4.1.9</title>
        <%@ include file="jsp/header.jsp"%>
    </head>
    <body>
        <div class="page-container">
            <div class="page-cont-row">
            <%@ include file="jsp/sidebar.jsp"%>
<div class="wrapper">

  <h1>4.1.9 Menjana Laporan Berdasarkan Hasil Pertanyaan (Query)</h1>
  <div class="wrap-1">
    <input type="radio" id="tab-1" name="tabs">
    <label for="tab-1"><div>Pengenalan</div><div class="cross"></div></label>
    <div class="content">
    <p> Penggunaan laporan untuk mengurus dan mempersembahkan data daripada pangkalan data merupakan satu cara yang
        sistematik dan terbaik. Laporan membolehkan anda menetapkan format data dalam bentuk yang menarik dan bermaklumat bagi
        tujuan cetakan dan paparan pada skrin.</p>
    <p> Laporan boleh dihasilkan berdasarkan maklumat daripada satu jadual atau daripada beberapa jadual. Sekiranya maklumat
        tersebut adalah daripada beberapa jadual, anda perlu menghasilkan pertanyaan (<i>query</i>) untuk mencapai maklumat
        yang dikehendaki terlebih dahulu. Laporan boleh dijana berdasarkan pertanyaan yang dilakukan.</p>
    <p> Dalam perisian aplikasi Microsoft Access, cara yang paling mudah untuk menghasilkan laporan adalah dengan menggunakan
        Report Wizard.</p>
    </div>
  </div>
  <div class="wrap-2">
    <input type="radio" id="tab-2" name="tabs">
    <label for="tab-2"><div>Langkah-langkah Menjana Laporan Menggunakan Report Wizard <i class="fa fa-fw fa-play"></i></div><div class="cross"></div></label>
    <div class="content">
        <video  controls class="center">
            <source src="materials/video4.1.9.mp4" type="video/mp4">
        </video>
        <ol>
            <li>Pada menu bar, klik <b>Create</b>. Kemudian, klik <b>Report Wizard</b></li>
            <li>Paparan tetingkap <b>Report Wizard</b> akan muncul. Pilih jadual atau <i>query</i> yang anda ingin gunakan untuk menghasilkan laporan</li>
            <li>Setelah jadual atau pertanyaan dipilih, tetingkap <b>Available Fields</b> menunjukkan semua medan yang ada di dalam jadual. Klik ikon >> untuk memilih semua medan</li>
            <li>Medan yang dipilih akan muncul dalam tetingkap <b>Selected Fields</b>. Klik <b>Next</b></li>
            <li>Anda boleh klik ikon > atau < untuk menentukan susunan medan yang dipaparkan dalam laporan. Klik <b>Next</b></li>
            <li>Anda boleh memilih medan untuk tujuan isihan dan klik <b>Ascending</b> atau <b>Descending</b>
                untuk menentukan isihan secara menaik atau menurun. Klik <b>Next</b></li>
            <li> Seterusnya, pilih cara susun atur (<i>Layout</i>) dan orientasi (<i>Orientation</i>) untuk menetapkan
                format laporan anda. Klik <b>Next</b></li>
            <li> Masukkan nama laporan anda. Klik <b>Finish</b></li>
        </ol>
    </div> 
  </div>
  <div class="wrap-3">
    <input type="radio" id="tab-3" name="tabs">
    <label for="tab-3"><div>Paparan Laporan dalam Susun Atur (<i>layout</i>) berbeza</div><div class="cross"></div></label>
    <div class="content">
        <ol>
            <li>Stepped Layout<img src="materials/diagram9.1.1.png" alt="Stepped Layout" class="center"></li>
            <li>Block Layout<img src="materials/diagram9.1.2.png" alt="Block Layout" class="center"></li>
            <li>Outline Layout<img src="materials/diagram9.1.3.png" alt="Outline Layout" class="center"></li>
        </ol>
    </div> 
  </div>
</div>       
        </div>
        </div>
    </body>
    <%@ include file="jsp/footer.jsp"%>
</html>
