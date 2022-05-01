<%-- 
    Document   : subtopik3
    Created on : Nov 18, 2020, 5:06:35 AM
    Author     : Asha Dalila A18CS0038
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="jsp/meta.jsp"%>
        <title>4.1.3</title>
        <%@ include file="jsp/header.jsp"%>
    </head>
    <body>
        <div class="page-container">
            <div class="page-cont-row">
            <%@ include file="jsp/sidebar.jsp"%>       
<div class="wrapper">
  <h1>4.1.3 Kekunci Primer dan Kekunci Asing</h1>
  <div class="wrap-1">
    <input type="radio" id="tab-1" name="tabs">
    <label for="tab-1"><div>Pengenalan</div><div class="cross"></div></label>
    <div class="content">
    <p> Entiti mengandungi rekod-rekod. Setiap baris dalam satu entiti merupakan satu rekod. Rekod merupakan himpunan atribut yang
        berhubungan antara satu sama lain. Dua jenis kekunci dalam sistem pangkalan data:</p>
    <ul>
        <li><span class="tip" data-tip="kebiasaannya terletak pada medan pertama sebelah kiri jadual.">
            Kekunci Primer</span></li>
            <ul>
                <li>Atribut dengan nilai unik</li>
                <li>Tidak boleh mengandungi data yang berulang/sama/ditinggalkan kosong (null)</li>
                <li>Digunakan untuk mengenal pasti rekod dalam jadua</li>
                <li>Setiap entiti mempunyai sekurang-kurangnya satu kekunci primer</li>
            </ul>
        <li><span class="tip" data-tip="kekunci asing terletak pada medan kedua selepas kekunci primer.">
            Kekunci Asing</span></li>
            <ul>
                <li>Atribut dalam satu jadual hubungan</li>
                <li>Atribut yang merupakan kekunci primer bagi satu jadual hubungan yang lain</li>
                <li>Mengaitkan dua atau lebih entiti yang mempunyai hubungan</li>
                <li>Mengaitkan rekod-rekod dari dua atau lebih daripada jadual yang mempunyai hubungan</li>
            </ul>
    </ul>
    </div>
  </div>
  <div class="wrap-2">
    <input type="radio" id="tab-2" name="tabs">
    <label for="tab-2"><div>Kepentingan Kekunci Primer</div><div class="cross"></div></label>
    <div class="content">
        <p>Kepentingan Kekunci Primer</p>
        <ul>
            <li>Memelihara integriti data</li>
            <li>Mengelakkan pertindihan rekod lama dan baharu</li>
            <li>Menjimatkan ruang storan komputer</li>
            <li>Memberi nilai unik untuk simpanan data</li>
        </ul>
    </div> 
  </div>
  <div class="wrap-3">
    <input type="radio" id="tab-3" name="tabs">
    <label for="tab-3"><div>Pengenalpastian kekunci primer dan kekunci asing</div><div class="cross"></div></label>
    <div class="content">
        <table>
            <tr>
                <th>Aspek</th>
                <th>Kekunci Primer</th>
                <th>Kekunci Asing</th>
            </tr>
            <tr>
                <td>Input</td>
                <td>Tidak boleh menerima nilai kosong (null)</td>
                <td>Boleh menerima beberapa nilai kosong (null)</td>
            </tr>
            <tr>
                <td>Bilangan kekunci dalam jadual</td>
                <td>Satu sahaja</td>
                <td>Boleh lebih daripada satu</td>
            </tr>
        </table>
    </div> 
  </div> 
</div>     
        </div>
        </div>
    </body>
    <%@ include file="jsp/footer.jsp"%>
</html>