<%-- 
    Document   : subtopik4
    Created on : Nov 19, 2020, 5:06:26 AM
    Author     : Asha Dalila A18CS0038
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@ include file="jsp/meta.jsp"%>
        <title>4.1.4</title>
        <%@ include file="jsp/header.jsp"%>
    </head>
    <body>
        <div class="page-container">
            <div class="page-cont-row">
            <%@ include file="jsp/sidebar.jsp"%>       
<div class="wrapper">
  <h1>4.1.4 Kekardinalan (Cardinality) antara Entiti dalam Hubungan</h1>
  <div class="wrap-1">
    <input type="radio" id="tab-1" name="tabs">
    <label for="tab-1"><div>Pengenalan</div><div class="cross"></div></label>
    <div class="content">
    <p> Kekardinalan merujuk kepada perhubungan antara entiti-entiti dalam satu pangkalan data. Terdapat beberapa jenis kekardinalan
        yang digunakan untuk menghubungkan satu entiti dengan satu entiti yang lain. Ini termasuklah kekardinalan one to one (1:1)
        dan one to many (1:M).</p>
    <p> Perhubungan antara dua entiti lazimnya diwakili dengan menggunakan kata kerja. Dalam gambar rajah perhubungan
        entiti (Entity Relationship Diagram – ERD), hubungan dilukis dengan simbol rombus.</p>
    <p>Terdapat 3 jenis kekardinalan:</p>
    <ul>
        <li>Kekardinalan one to one (1:1) atau dikenali hubungan satu-ke-satu</li>
        <li>Kekardinalan one to many (1:M) atau dikenali hubungan satu-ke-banyak</li>
        <li>Kekardinalan many to many (M:N) atau dikenali hubungan banyak-ke-banyak</li>
    </ul>
    </div>
  </div>
  <div class="wrap-2">
    <input type="radio" id="tab-2" name="tabs">
    <label for="tab-2"><div>Kekardinalan one to one (1:1) atau dikenali hubungan satu-ke-satu</div><div class="cross"></div></label>
    <div class="content">
    <img src="materials/diagram4.1.png" alt="satu ke satu" class="center">
    </div>
  </div>
  <div class="wrap-3">
    <input type="radio" id="tab-3" name="tabs">
    <label for="tab-3"><div>Kekardinalan one to many (1:M) atau dikenali hubungan satu-ke-banyak</div><div class="cross"></div></label>
    <div class="content">
    <img src="materials/diagram4.2.png" alt="satu ke banyak" class="center">
    </div>
  </div>
  <div class="wrap-4">
    <input type="radio" id="tab-4" name="tabs">
    <label for="tab-4"><div>Contoh Kekardinalan</div><div class="cross"></div></label>
    <div class="content">
            <p>Lakaran jenis kekardinalan dalam lukisan gambar rajah perhubungan entiti bagi situasi-situasi berikut.</p>
            <p>(a) Seorang guru menjadi guru kelas bagi satu kelas sahaja.</p>
            <p>(b) Seorang murid boleh mendaftar lebih daripada satu acara sukan.</p>
            <img src="materials/diagram4.3.png" alt="contoh kekardinalan" class="center">
    </div>
  </div>
</div>     
        </div>
        </div>
    </body>
    <%@ include file="jsp/footer.jsp"%>
</html>