<%-- 
    Document   : subtopik6
    Created on : Nov 26, 2020, 2:33:35 AM
    Author     : Asha Dalila A18CS0038
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="jsp/meta.jsp"%>
        <title>4.1.6</title>
        <%@ include file="jsp/header.jsp"%>
    </head>
    <body>
        <div class="page-container">
            <div class="page-cont-row">
            <%@ include file="jsp/sidebar.jsp"%>                    
<div class="wrapper">

  <h1>4.1.6 Menghasilkan Borang dan Memasukkan Data Melalui Borang</h1>
  <div class="wrap-1">
    <input type="radio" id="tab-1" name="tabs">
    <label for="tab-1"><div>Pengenalan Menghasilkan Borang Menggunakan Microsoft Access</div><div class="cross"></div></label>
    <div class="content">
        <p> Anda boleh menggunakan borang (<i>form</i>) untuk menyusun dan mengurus rekod-rekod dalam pangkalan data dengan lebih efisien.
            Penggunaan borang membolehkan pengguna memasukkan dan mengubah suai data dengan mudah kerana borang berfungsi
            sebagai antara muka pengguna yang interaktif.</p>
        <p> Perisian aplikasi Microsoft Access membolehkan anda menghasilkan borang dengan mudah. Ini kerana borang-borang
            dapat dijana secara automatik menggunakan Form Wizard.</p>
        <p> Borang yang dihasilkan digunakan untuk memasukkan, mengedit atau memaparkan data dan rekod dalam jadual hubungan
            sesuatu entiti.</p>       
    </div>
    <div class="lessons">
      <div class="lesson-wrap">
        <input type="radio" id="lesson-1" name="lesson">
        <label for="lesson-1"><div>Simbol - simbol di Form Wizard</div> <div class="cross"></div></label>
        <div class="content">
            <table>
            <tr>
                <th>Simbol</th>
                <th>Maksud</th>
            </tr>
            <tr>
                <td> > </td>
                <td>Pindah medan yang diklik kepada ruangan medan-medan terpilih.</td>
            </tr>
            <tr>
                <td> >> </td>
                <td>Pindah semua medan yang sedia ada dalam jadual kepada ruangan medan-medan terpilih.</td>
            </tr>
            <tr>
                <td> < </td>
                <td>Pindah balik medan yang diklik kepada ruangan medan-medan telah sedia ada.</td>
            </tr>
            <tr>
                <td> << </td>
                <td>Pindah balik semua medan kepada ruangan medan-medan telah sedia ada.</td>
            </tr>
            </table>
        </div>
      </div>
      <div class="lesson-wrap">
        <input type="radio" id="lesson-2" name="lesson">
        <label for="lesson-2"><div>Jenis Susun Atur</div> <div class="cross"></div></label>
        <div class="content">
            <table>
            <tr>
                <th>Jenis Susun Atur</th>
                <th>Maksud</th>
            </tr>
            <tr>
                <td><i>Columnar</i></td>
                <td>Rekod dipaparkan satu demi satu.</td>
            </tr>
            <tr>
                <td><i>Tabular</i></td>
                <td>Semua rekod dipaparkan dalam bentuk jadual yang menarik.</td>
            </tr>
            <tr>
                <td><i>Datasheet</i></td>
                <td>Semua rekod dipaparkan dalam bentuk helaian data yang agak menarik.</td>
            </tr>
            <tr>
                <td><i>Justified</i></td>
                <td>Semua medan (<i>fields</i>) disusun pada baris-baris blok yang mempunyai margin kiri dan kanan yang tetap.</td>
            </tr>
            </table>
        </div>
      </div>
        <div class="lesson-wrap">
        <input type="radio" id="lesson-3" name="lesson">
        <label for="lesson-3"><div>Butang-butang pada bahagian bawah Borang</div> <div class="cross"></div></label>
        <div class="content">
            <img src="materials/diagram6.2.png" alt="Butang bahagian bawah borang" class="center">
        </div>
      </div>
    </div>
  </div>
  <div class="wrap-2">
    <input type="radio" id="tab-2" name="tabs">
    <label for="tab-2"><div>Langkah - Langkah Menghasilkan Borang</div><div class="cross"></div></label>
    <div class="content"> 
        <p>Langkah-langkah untuk menghasilkan BORANG MURID dengan menggunakan pangkalan data TUGASAN 1.</p>
        <ol>
            <li>Buka pangkalan data TUGASAN1. Pada menu bar, klik pada tab <b>Create</b>. Kemudian, klik <b>Form Wizard</b>.
                <img src="materials/diagram6.1.1.png" alt="Langkah 1" class="center"></li>
            <li>Tetingkap <b>Form Wizard</b> akan dipaparkan. Pilih jadual MURID dan klik butang >> untuk memilih
                semua medan yang ada dalam jadual. 
                <img src="materials/diagram6.1.2.png" alt="Langkah 2" class="center"></li>
            <li>Paparan berikut akan diperhatikan. Klik <b>Next</b> untuk langkah yang seterusnya.
                <img src="materials/diagram6.1.3.png" alt="Langkah 3" class="center"></li>
            <li>Klik butang radio Columnar untuk memilih susun atur Columnar. Kemudian, klik <b>Next</b>.
                <img src="materials/diagram6.1.4.png" alt="Langkah 4" class="center"></li>
            <li>Paparan berikut akan diperhatikan. Namakan borang anda sebagai BORANG MURID dengan
                menaip pada ruangan yang disediakan. Kemudian, klik <b>Finish</b>.
                <img src="materials/diagram6.1.5.png" alt="Langkah 5" class="center"></li>
            <li>Paparan BORANG MURID<img src="materials/diagram6.1.6.png" alt="Paparan borang murid" class="center"></li>
        </ol>
        <p> BORANG MURID yang telah berjaya dihasilkan akan dipaparkan pada ruangan <i>All Access Objects</i>. Bilangan rekod yang
            ditunjukkan adalah sama dengan bilangan rekod yang ada dalam jadual MURID. </p>
    </div> 
  </div>
    <div class="wrap-3">
    <input type="radio" id="tab-3" name="tabs">
    <label for="tab-3"><div>Langkah - Langkah Menghasilkan Borang daripada 2 Jadual</div><div class="cross"></div></label>
    <div class="content"> 
        <p> Selain membina borang daripada satu jadual, borang juga boleh dibina dengan
            memilih atribut-atribut daripada dua jadual yang berhubungan</p>
        <ol>
            <li>Buka pangkalan data TUGASAN1. Pada menu bar,
                klik pada tab <b>Create</b>. Kemudian, klik <b>Form Wizard</b></li>
            <li>Tetingkap <b>Form Wizard</b> akan dipaparkan. Pilih jadual MURID dan klik butang >> untuk memilih
                semua medan yang ada dalam jadual. Kemudian, pilih jadual MARKAH dan klik butang >>.
                <img src="materials/diagram6.3.1.png" alt="Langkah 1 & 2" class="center"></li>
            <li>Paparan berikut akan diperhatikan. Pilih <b>Form with subform(s)</b>. Kemudian, klik <b>Next</b>.
                <img src="materials/diagram6.3.2.png" alt="Langkah 3" class="center"></li>
            <li>Terdapat dua pilihan susun atur untuk subform iaitu <i>Tabular</i> dan <i>Datasheet</i>. Klik
                pada butang radio <i>Datasheet</i> untuk memilih susun atur <i>Datasheet</i>. Kemudian, klik <b>Next</b>.
                <img src="materials/diagram6.3.3.png" alt="Langkah 4" class="center"></li>
            <li>Paparan berikut akan diperhatikan. Namakan Borang Murid dan Borang Markah (<i>Subform</i>). Kemudian, klik <b>Finish</b>.
                <img src="materials/diagram6.3.4.png" alt="Langkah 5" class="center"></li>
            <li>Borang Murid dan Borang Markah (<i>Subform</i>) telah berjaya dihasilkan. Perhatikan borang ini memudahkan pengguna memasukkan data untuk dua jadual tanpa
                perlu memasukkan ID_Murid iaitu kekunci primer secara berulang.
                <img src="materials/diagram6.3.5.png" alt="Langkah 6" class="center"></li>
        </ol>
    </div> 
  </div>
  <div class="wrap-4">
    <input type="radio" id="tab-4" name="tabs">
    <label for="tab-4"><div>Langkah - Langkah Menambah Rekod Baharu ke dalam Borang yang dibina</div><div class="cross"></div></label>
    <div class="content"> 
        <p> Anda berjaya membina borang untuk jadual MURID dan jadual MARKAH. Kini, anda akan mempelajari langkahlangkah untuk memasukkan data ke dalam jadual-jadual melalui
            borang-borang dengan menggunakan fungsi penambahan rekod.</p>
        <p> Langkah-langkah untuk menambah rekod baharu ke dalam jadual MURID dan jadual MARKAH dengan
            menggunakan borang yang dibina.</p>
        <ol>
            <li>Klik ikon di bahagian bawah borang seperti yang ditunjukkan di bawah.
                <img src="materials/diagram6.4.1.png" alt="Langkah 1" class="center"></li>
            <li>Paparan berikut akan diperhatikan. Kini anda boleh memasukkan data dalam
                ruangan kosong. Anda juga boleh memasukkan data untuk dua jadual dalam
                satu Borang Murid dan Borang Markah (<i>Subform</i>).
                <img src="materials/diagram6.4.2.png" alt="Langkah 2" class="center"></li>
            <li>Mula masukkan data murid dan data markah ke dalam ruangan kosong. Ruangan ID_Murid bagi Borang Markah tidak perlu dimasukkan kerana data
                akan dimasukkan secara automatik apabila ID_Murid diisi dalam Borang Murid. Tekan kekunci <b>Enter</b> pada papan kekunci bagi tujuan memasukkan data yang
                seterusnya.
                <img src="materials/diagram6.4.3.png" alt="Langkah 3" class="center"></li>
        </ol>
        <p> Terdapat dua cara untuk memasukkan data ke dalam pangkalan data, iaitu secara
            langsung ke dalam jadual atau melalui borang. Anda telah mempelajari kedua-dua cara
            tersebut. Rajah di bawah menunjukkan jadual MURID dan jadual MARKAH yang menunjukkan
            bilangan rekod di dalamnya turut bertambah.</p>
        <img src="materials/diagram6.4.4.png" alt="Paparan jadual" class="center">
    </div> 
  </div>
</div>     
                  
            </div>
        </div>
    </body>
    <%@ include file="jsp/footer.jsp"%>
</html>
