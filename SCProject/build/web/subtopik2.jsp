<%-- 
    Document   : subtopik2
    Created on : Nov 18, 2020, 5:06:26 AM
    Author     : Asha Dalila binti Zulkifly A18CS0038
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="jsp/meta.jsp"%>
        <title>4.1.2</title>
        <%@ include file="jsp/header.jsp"%>
    </head>
    <body>
        <div class="page-container">
            <div class="page-cont-row">
            <%@ include file="jsp/sidebar.jsp"%>                   
<div class="wrapper">
  <h1>4.1.2 Entiti dan Atribut</h1>
  <div class="wrap-1">
    <input type="radio" id="tab-1" name="tabs">
    <label for="tab-1"><div>Komponen Pangkalan Data</div><div class="cross"></div></label>
    <div class="content">
    <p> Pangkalan data boleh wujud dalam pelbagai jenis organisasi. Namun begitu, reka bentuk pangkalan data mungkin berbeza
        antara organisasi yang lain. Hal ini disebabkan setiap organisasi mempunyai entiti-entiti dengan atribut-atribut yang berlainan.</p>
    <p>Entiti dan atribut diwakili oleh simbol piawai seperti berikut:</p>
    <img src="materials/diagram2.0.png" alt="Entiti dan Atribut" class="center">
    </div>
    <div class="lessons">
      <div class="lesson-wrap">
        <input type="radio" id="lesson-1" name="lesson">
        <label for="lesson-1"><div>Entiti</div> <div class="cross"></div></label>
        <div class="content">
            <ul>
            <li>Satu kumpulan objek yang sama jenis</li>
            <li>Bersifat unik</li>
            <li>Wujud dalam persekitaran, iaitu tempat di mana pangkalan data berada
                atau tempat di mana anda hendak membangunkan pangkalan data</li>
            <li>Contoh entiti: orang, tempat atau benda</li>
            <li>Mempunyai data mengenainya yang boleh dikutip dan disimpan</li>
            <li>Diwakili oleh simbol segi empat dalam gambar rajah perhubungan entiti</li>
            </ul>
        </div>
      </div>
      <div class="lesson-wrap">
        <input type="radio" id="lesson-2" name="lesson">
        <label for="lesson-2"><div>Atribut</div> <div class="cross"></div></label>
        <div class="content">
            <ul>
                <li>Menerangkan ciri-ciri entiti</li>
                <li>Mempunyai satu atau lebih ciri</li>
                <li>Merupakan lajur dalam jadual pangkalan data</li>
                <li>Diwakili oleh bentuk bulatan bujur dalam gambar rajah perhubungan entiti</li>
            </ul>
        </div>
      </div>
    </div>
  </div>

  <div class="wrap-2">
    <input type="radio" id="tab-2" name="tabs">
    <label for="tab-2"><div>Hubungan antara Entiti dan Atribut</div><div class="cross"></div></label>
    <div class="content">
        <p>Hubungan antara entiti dan atribut</p>
        <img src="materials/diagram2.1.png" alt="Entiti dan Atribut" class="center">
    </div>
    <div class="lessons">
      <div class="lesson-wrap">
        <input type="radio" id="lesson-3" name="lesson">
        <label for="lesson-3"><div>Contoh 1</div> <div class="cross"></div></label>
        <div class="content">
            <p>Lakaran entiti-entiti bagi persekitaran bilik darjah dengan menggunakan simbol yang betul.</p>
            <img src="materials/diagram2.2.png" alt="Lakaran entiti-entiti bagi persekitaran bilik darjah" class="center">   
        </div>
      </div>
      <div class="lesson-wrap">
        <input type="radio" id="lesson-4" name="lesson">
        <label for="lesson-4"><div>Contoh 2</div> <div class="cross"></div></label>
        <div class="content">
            <p>Lakaran entiti dan atribut-atribut bagi persekitaran makmal komputer dengan menggunakan simbol yang betul.</p>
            <img src="materials/diagram2.3.png" alt="Lakaran entiti dan atribut-atribut bagi persekitaran makmal komputer" class="center">     
        </div>
      </div>
        <div class="lesson-wrap">
        <input type="radio" id="lesson-5" name="lesson">
        <label for="lesson-5"><div>Contoh 3</div> <div class="cross"></div></label>
        <div class="content">
            <p>Lakaran dua entiti dan atribut-atribut bagi persekitaran kantin sekolah dengan menggunakan simbol yang betul.</p>
            <img src="materials/diagram2.4.png" alt="Lakaran entiti dan atribut-atribut bagi persekitaran kantin sekolah" class="center">    
        </div>
      </div>
    </div>
  </div>

  <div class="wrap-3">
    <input type="radio" id="tab-3" name="tabs">
    <label for="tab-3"><div>Perwakilan dalam Pangkalan Data Hubungan</div><div class="cross"></div></label>
    <div class="content">
        <p> Dalam pangkalan data hubungan, setiap entiti diwakili oleh satu jadual (juga disebut sebagai jadual hubungan). 
            Setiap jadual hubungan terdiri daripada beberapa lajur yang dikenali sebagai medan. Setiap lajur atau medan pula mewakili satu atribut. Setiap baris dalam entiti
            mewakili satu rekod bagi seorang murid. Satu rekod mengandungi data bagi setiap atribut yang ada dalam entiti.</p>
        <img src="materials/diagram2.5.png" alt="Perwakilan entiti dan atribut dalam pangkalan data hubungan" class="center">     
    </div>
  </div>  
</div>       
        </div>
        </div>
    </body>
    <%@ include file="jsp/footer.jsp"%>
</html>