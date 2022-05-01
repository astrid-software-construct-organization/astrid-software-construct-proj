<%-- 
    Document   : subtopik8
    Created on : Nov 20, 2020, 4:15:51 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="jsp/meta.jsp"%>
        <title>4.1.8</title>
        <%@ include file="jsp/header.jsp"%>
    </head>
    <body>
        <div class="page-container">
            <div class="page-cont-row">
            <%@ include file="jsp/sidebar.jsp"%>       
<div class="wrapper">

  <h1>4.1.8 Penggunaan Pernyataan-pernyataan SQL yang Melibatkan Ungkapan Boolean</h1>
  <div class="wrap-1">
    <input type="radio" id="tab-1" name="tabs">
    <label for="tab-1"><div>Operator Logik</div><div class="cross"></div></label>
    <div class="content">
        <p> Semasa membuat pertanyaan (<i>query</i>), anda mungkin pernah berada dalam situasi yang memerlukan anda menggunakan
            operator logik. Operator logik juga dikenali sebagai operator <i>boolean</i>. Operator logik yang digunakan dalam arahan SQL
            ialah <b>OR, AND, EQV, NOT dan XOR</b>. Akan tetapi, operator OR dan operator AND ialah dua operator logik yang paling
            kerap digunakan.
        </p>
        <p> Operator logik digunakan untuk menggabungkan dua atau lebih kriteria bagi menghasilkan satu ungkapan <i>boolean</i>. Ungkapan
            <i>boolean</i> akan memberi nilai BENAR atau PALSU. Penggunaan operator logik dalam arahan SQL membenarkan pelbagai kriteria
            atau syarat digabungkan untuk menghasilkan pertanyaan yang lebih kompleks untuk mencapai data yang dikehendaki.
        </p>
        <p> Nilai <i>boolean</i> BENAR dan PALSU juga kadangkala diwakili oleh nombor 1 dan 0,
            di mana 1 mewakili BENAR dan 0 mewakili PALSU. Operator OR boleh diwakili dengan simbol (v). Operator AND boleh diwakili dengan simbol (^).
        </p>
    </div>
  </div>
  <div class="wrap-2">
    <input type="radio" id="tab-2" name="tabs">
    <label for="tab-2"><div>Operator OR</div><div class="cross"></div></label>
    <div class="content">
        <p>Apabila operator OR digunakan untuk menggabungkan dua kriteria P dan Q, ungkapan P OR Q akan dihasilkan. Nilai boolean
            BENAR akan dipulangkan jika salah satu kriteria P atau Q adalah benar.</p> 
        <p>Jadual menunjukkan jadual kebenaran OR.
        </p>
        <table>
            <tr>
                <th>P</th>
                <th>Q</th>
                <th>P OR Q</th>
            </tr>
            <tr>
                <td>BENAR</td>
                <td>BENAR</td>
                <td>BENAR</td>
            </tr>
            <tr>
                <td>BENAR</td>
                <td>PALSU</td>
                <td>BENAR</td>
            </tr>
            <tr>
                <td>PALSU</td>
                <td>BENAR</td>
                <td>BENAR</td>
            </tr>
            <tr>
                <td>PALSU</td>
                <td>PALSU</td>
                <td>PALSU</td>
            </tr>
        </table>
        <p>Jadual kebenaran OR berikut berdasarkan nombor 0, 1 dan simbol v. 
        </p>
        <table>
            <tr>
                <th>P</th>
                <th>Q</th>
                <th>P v Q</th>
            </tr>
            <tr>
                <td>1</td>
                <td>1</td>
                <td>1</td>
            </tr>
            <tr>
                <td>1</td>
                <td>0</td>
                <td>1</td>
            </tr>
            <tr>
                <td>0</td>
                <td>1</td>
                <td>1</td>
            </tr>
            <tr>
                <td>0</td>
                <td>0</td>
                <td>0</td>
            </tr>
        </table>
    </div>
    <div class="lessons">
      <div class="lesson-wrap">
        <input type="radio" id="lesson-1" name="lesson">
        <label for="lesson-1"><div>Operator OR dalam Pernyataan SQL</div> <div class="cross"></div></label>
        <div class="content">
            <p> Operator OR digunakan untuk menggabungkan pelbagai kriteria atau syarat yang ditetapkan dalam klausa WHERE.
                Pernyataan SQL yang berikut menunjukkan sintaks umum penggunaan operator OR dalam klausa WHERE.</p>
            <blockquote>
                <b>SELECT atribut_1, atribut_2, …, atribut_N<br>
                FROM nama_jadual <br>
                WHERE kriteria_1 OR kriteria_2, … OR kriteria_N;</b>
            </blockquote>
        </div>
      </div>
      <div class="lesson-wrap">
        <input type="radio" id="lesson-2" name="lesson">
        <label for="lesson-2"><div>Contoh penggunaan operator OR dalam pernyataan SQL</div> <div class="cross"></div></label>
        <div class="content">
            <p>Rajah menunjukkan jadual bernama MURID. Pernyataan SQL adalah berdasarkan jadual ini.</p>
            <img src="materials/diagram8.1.png" alt="Entiti dan Atribut" class="center">
            <p> Pernyataan SQL berikut menunjukkan penggunaan operator OR dalam klausa WHERE untuk mendapatkan data yang
                memenuhi salah satu daripada dua kriteria yang dinyatakan, iaitu kriteria jantina ialah perempuan atau kriteria kaum ialah Melayu.     </p>
            <blockquote>
                <b>SELECT ID_Murid, Nama_Murid, Jantina, Kaum<br>
                FROM MURID<br>
                WHERE Jantina = “PEREMPUAN” OR Kaum = “MELAYU”;</b>
            </blockquote>
            <p>Rajah menunjukkan output yang terhasil daripada pernyataan SQL di atas.                
            </p>
            <img src="materials/diagram8.2.png" alt="Entiti dan Atribut" class="center">
        </div>
      </div>
    </div>
  </div>

  <div class="wrap-3">
    <input type="radio" id="tab-3" name="tabs">
    <label for="tab-3"><div>Operator AND</div><div class="cross"></div></label>
    <div class="content">
        <p> Apabila operator AND digunakan untuk menggabung dua kriteria P dengan Q, ungkapan P AND Q akan dihasilkan. Nilai
            <i>boolean</i> BENAR akan dipulangkan hanya apabila kedua-dua kriteria P dan Q adalah BENAR.</p>
        <p>Jadual menunjukkan jadual kebenaran AND.</p>
        <table>
            <tr>
                <th>P</th>
                <th>Q</th>
                <th>P OR Q</th>
            </tr>
            <tr>
                <td>BENAR</td>
                <td>BENAR</td>
                <td>BENAR</td>
            </tr>
            <tr>
                <td>BENAR</td>
                <td>PALSU</td>
                <td>PALSU</td>
            </tr>
            <tr>
                <td>PALSU</td>
                <td>BENAR</td>
                <td>PALSU</td>
            </tr>
            <tr>
                <td>PALSU</td>
                <td>PALSU</td>
                <td>PALSU</td>
            </tr>
        </table>
        <p>Jadual kebenaran AND berikut berdasarkan nombor 0, 1 dan simbol ^. 
        </p>
        <table>
            <tr>
                <th>P</th>
                <th>Q</th>
                <th>P v Q</th>
            </tr>
            <tr>
                <td>1</td>
                <td>1</td>
                <td>1</td>
            </tr>
            <tr>
                <td>1</td>
                <td>0</td>
                <td>0</td>
            </tr>
            <tr>
                <td>0</td>
                <td>1</td>
                <td>0</td>
            </tr>
            <tr>
                <td>0</td>
                <td>0</td>
                <td>0</td>
            </tr>
        </table>
    </div>
        <div class="lessons">
      <div class="lesson-wrap">
        <input type="radio" id="lesson-3" name="lesson">
        <label for="lesson-3"><div>Operator AND dalam Pernyataan SQL</div> <div class="cross"></div></label>
        <div class="content">
            <p>Pernyataan SQL yang berikut menunjukkan sintaks umum penggunaan operator AND dalam klausa WHERE.</p>
            <blockquote>
                <b>SELECT atribut_1, atribut_2, …, atribut_N<br>
                FROM nama_jadual<br>
                WHERE kriteria_1 AND kriteria_2 AND …kriteria_N;</b>

            </blockquote>
        </div>
      </div>
      <div class="lesson-wrap">
        <input type="radio" id="lesson-4" name="lesson">
        <label for="lesson-4"><div>Contoh penggunaan operator AND dalam pernyataan SQL</div> <div class="cross"></div></label>
        <div class="content">
            <p>Rajah menunjukkan jadual bernama MURID. Pernyataan SQL adalah berdasarkan jadual ini.</p>
            <img src="materials/diagram8.1.png" alt="Entiti dan Atribut" class="center">
            
            <p> Pernyataan SQL berikut menunjukkan penggunaan operator AND dalam klausa WHERE
                untuk mendapatkan data yang memenuhi kedua-dua kriteria yang dinyatakan, iaitu kriteria
                jantina ialah perempuan atau kriteria kaum ialah Melayu.                
            </p>
            <blockquote>
                <b>SELECT ID_Murid, Nama_Murid, Jantina, Kaum<br>
                FROM MURID<br>
                WHERE Jantina = “PEREMPUAN” AND Kaum = “MELAYU”;</b>
            </blockquote>
            <p>Rajah menunjukkan output yang terhasil daripada pernyataan SQL di atas.               
            </p>
            <img src="materials/diagram8.3.png" alt="Entiti dan Atribut" class="center">
        </div>
      </div>
    </div>
  </div> 
</div>        
        </div>
        </div>
    </body>
    <%@ include file="jsp/footer.jsp"%>
</html>