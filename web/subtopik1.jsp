<%-- 
    Document   : subtopik1
    Created on : Nov 18, 2020, 5:05:30 AM
    Author     : Asha Dalila Zulkifly A18CS0038
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="jsp/meta.jsp"%>
        <title>4.1.1</title>
        <%@ include file="jsp/header.jsp"%>
    </head>
    <body>
        <div class="page-container">
            <div class="page-cont-row">
            <%@ include file="jsp/sidebar.jsp"%>            

<div class="wrapper">
  <h1>4.1.1 Maksud dan Penggunaan Pangkalan Data dan Structured Query Language (SQL)</h1>
  <div class="wrap-1">
    <input type="radio" id="tab-1" name="tabs">
    <label for="tab-1"><div>Pengenalan</div><div class="cross"></div></label>
    <div class="content">
    <p> Data memainkan peranan yang penting dalam proses membuat keputusan. Data digunakan secara meluas untuk menyelesaikan
        sesuatu masalah. Data dianggap sebagai aset penting bagi sesebuah organisasi. Kejayaan sesebuah organisasi bergantung
        kepada kebolehannya untuk memperoleh data yang tepat, mengurus data dengan cekap dan menggunakan data untuk
        membuat analisis dengan tepat. Walau bagaimanapun, data yang belum diproses kepada maklumat adalah tidak bermakna.
        Maklumat adalah hasil daripada pengumpulan, pemprosesan dan penganalisaan data yang boleh digunakan untuk membuat
        sesuatu keputusan. Maklumat yang dihasilkan akan lebih bermakna dan mudah difahami oleh setiap individu.</p>
    <p>Rajah menunjukkan hubungan antara data dan maklumat:</p>
    <img src="materials/diagram1.0.png" alt="Hubungan data dan maklumat" class="center">
    </div>
  </div>

  <div class="wrap-2">
    <input type="radio" id="tab-2" name="tabs">
    <label for="tab-2"><div>Pangkalan Data</div><div class="cross"></div></label>
    <div class="content">
        <p> Pangkalan data ialah tempat pengumpulan dan penyimpanan data secara berpusat bagi sistem maklumat yang berasaskan
            komputer. Pangkalan data juga merupakan koleksi data yang saling berhubung antara satu sama lain yang disimpan tanpa
            berlaku pengulangan data yang tidak dikehendaki. Pangkalan data dapat memudahkan data dan maklumat untuk disimpan,
            dicapai atau dikemas kini.</p>
        <p>Pengurusan data dalam sesebuah organisasi terbahagi kepada dua cara, iaitu dengan menggunakan:</p>
        <ul>
            <li>Sistem Fail</li>
            <li>Sistem Pangkalan Data</li>
        </ul>     
    </div> 
    <div class="lessons">
      <div class="lesson-wrap">
        <input type="radio" id="lesson-1" name="lesson">
        <label for="lesson-1"><div>Sistem Fail</div> <div class="cross"></div></label>
        <div class="content">
            <p>Terdapat dua jenis sistem fail yang digunakan, iaitu sistem fail secara manual dan sistem fail elektronik.</p>
            <ul>
                <li>Sistem Fail Secara Manual</li>
                <ul>
                    <li>Data disimpan dalam fail kertas</li>
                    <li>Fail kertas disimpan dalam kabinet fail</li>
                    <li>Capaian ke atas data mengambil masa yang lama</li>
                    <li>Rekod sukar diubah</li>
                    <li>Ruang yang besar diperlukan untuk menyimpan fail</li>
                </ul>
                <li>Sistem Fail Secara Elektronik</li>
                <ul>
                    <li>Menggunakan komputer</li>
                    <li>Data direkod dalam fail komputer</li>
                    <li>Data disimpan dalam peranti storan komputer</li>
                    <li>Rekod senang diubah</li>
                    <li>Capaian ke atas data memakan masa yang singkat</li>
                </ul>
            </ul>
        </div>
      </div>
      <div class="lesson-wrap">
        <input type="radio" id="lesson-2" name="lesson">
        <label for="lesson-2"><div>Sistem Pangkalan Data</div> <div class="cross"></div></label>
        <div class="content">
            <p> Konsep pangkalan data muncul hasil daripada keperluan untuk membina sistem pemprosesan data yang cekap bagi menyokong
                keperluan sesebuah organisasi. Berbanding dengan sistem fail, pangkalan data bukan sekadar sistem pemprosesan fail elektronik.
                Pangkalan data menyatupadukan koleksi data yang terkandung dalamnya untuk memudahkan penyimpanan, pemprosesan, capaian dan keselamatan data.</p>
            <ul>
                <li>Fungsi</li>
                <ul>
                    <li>Membina sistem pemprosesan data yang cekap</li>
                    <li>Menyepadukan koleksi data</li>
                </ul>
                <li>Kebaikan</li>
                <ul>
                    <li>Memudahkan capaian,pengurusan dan pengemaskinian data</li>
                    <li>Mengelakkan pengulangan data</li>
                    <li>Menjaga integriti data</li>
                    <li>Menjaga keselamatan data</li>
                </ul>
                <li>Contoh</li>
                <ul>
                    <li>Penggunaan Sistem Inventori Barangan di pasar raya</li>
                    <li>Penggunaan Sistem Analisis Peperiksaan Sekolah (SAPS) untuk semua sekolah di Malaysia</li>
                </ul>
            </ul>
        </div>
      </div>
        <div class="lesson-wrap">
        <input type="radio" id="lesson-3" name="lesson">
        <label for="lesson-3"><div>Evolusi Sistem Fail Kepada Sistem Pangkalan Data</div> <div class="cross"></div></label>
        <div class="content">
            <p>Kebaikan evolusi dari Sistem Fail kepada Sistem Pangkalan Data:</p>
            <img src="materials/diagram1.2.png" alt="Evolusi Sistem Fail kepada Sistem Pangkalan Data" class="center">
        </div>
      </div>
    </div>
  </div>
  <div class="wrap-3">
    <input type="radio" id="tab-3" name="tabs">
    <label for="tab-3"><div>Structured Query Language (SQL)</div><div class="cross"></div></label>
    <div class="content">
        <p> Capaian data dan maklumat dalam pangkalan data dilakukan melalui penggunaan bahasa pengaturcaraan seperti Structured
            Query Language (SQL). SQL ialah bahasa pengaturcaraan aras tinggi generasi keempat yang ringkas dan mudah untuk dibaca
            serta mempunyai arahan-arahan yang terhad. SQL digunakan untuk menyimpan, memanipulasi dan mendapatkan data daripada pangkalan data.</p>
        <p> SQL dapat berinteraksi dengan pangkalan data secara mudah. Oleh itu, SQL digunakan secara meluas dalam aplikasi yang
            melibatkan penggunaan pangkalan data. Bahasa pengaturcaraan mempunyai sintaks tertentu begitu juga dengan SQL. Antara
            pernyataan SQL yang akan anda pelajari ialah SELECT…FROM, SELECT…WHERE dan SELECT…ORDER BY.
            <span class="tip" data-tip="Boleh ditulis dalam huruf besar atau huruf kecil.">
            SQL tidak sensitif huruf</span>. Maksudnya, <b>SELECT</b> * FROM abc sama kesannya dengan <b>select</b> * from abc.</p>
    </div> 
  </div>  
</div>     
            </div>    
        </div>
    </body>
    <%@ include file="jsp/footer.jsp"%>
</html>