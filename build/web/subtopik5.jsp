<%-- 
    Document   : subtopik5
    Created on : Dec 2, 2020, 6:47:48 AM
    Author     : Asha Dalila A18CS0038
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="jsp/meta.jsp"%>
        <title>4.1.5</title>
        <%@ include file="jsp/header.jsp"%>
    </head>
    <body>
        <div class="page-container">
            <div class="page-cont-row">
            <%@ include file="jsp/sidebar.jsp"%>
<div class="wrapper">
  <h1>4.1.5 Membina Pangkalan Data</h1>
  <div class="wrap-1">
    <input type="radio" id="tab-1" name="tabs">
    <label for="tab-1"><div>Membina Pangkalan Data</div><div class="cross"></div></label>
    <div class="content">
    <p> Pangkalan data dibina dengan menggunakan perisian sistem pengurusan pangkalan data atau lebih dikenali sebagai DBMS
        (<i>Database Management System</i>). Satu contoh perisian DBMS ialah Microsoft Access. Perisian ini dilengkapi dengan berbagai-bagai
        alat perisian (<i>software tools</i>) bagi memudahkan pembangunan, pengurusan dan penyelenggaraan pangkalan data hubungan
        (<i>relational database</i>).</p>
    </div>
    <div class="lessons">
      <div class="lesson-wrap">
        <input type="radio" id="lesson-1" name="lesson">
        <label for="lesson-1"><div>Objek-objek Pangkalan Data dalam Microsoft Access</div> <div class="cross"></div></label>
        <div class="content">
            <table>
                <tr>
                    <th>Jenis objek</th>
                    <th>Penerangan tentang kegunaan objek</th>
                </tr>
                <tr>
                    <td>Jadual (<i>Table</i>)</td>
                    <td>
                <ul>
                <li>Satu entiti diwakili oleh satu jadual. Atribut-atribut entiti yang berkenaan
                    disimpan dalam lajur (atau medan) pada jadual.</li>
                <li>Menyimpan data mengikut baris. Setiap baris data dipanggil satu rekod.</li>
                </ul>
                    </td>
                </tr>
                <tr>
                    <td>Pertanyaan (<i>Query</i>)</td>
                    <td>
                <ul>
                <li>Meminta data yang tertentu daripada satu atau lebih daripada satu jadual.</li>
                <li>Data yang diperoleh boleh dicetak atau dipaparkan.</li>
                <li>Data yang dipaparkan boleh dibuat perubahan.</li>
                </ul>
                    </td>
                </tr>
                <tr>
                    <td>Borang (<i>Form</i>)</td>
                    <td>
                <ul>
                <li>Merupakan antara muka antara pengguna dan komputer.</li>
                <li>Memudahkan kemasukan data.</li>
                <li>Memaparkan data daripada satu atau lebih daripada satu jadual dalam
                    bentuk selain daripada baris dan lajur.</li>
                <li>Memaparkan data daripada pertanyaan.</li>
                <li>Mengubah data yang dipaparkan melalui satu borang.</li>
                <li>Mengubah, melihat atau memasukkan data.</li>                
                </ul>
                    </td>
                </tr>
                <tr>
                    <td>Laporan (<i>Report</i>)</td>
                    <td>
                <ul>
                <li>Menyediakan laporan berdasarkan data dalam satu atau lebih daripada
                    satu jadual entiti atau berdasarkan satu pertanyaan.</li>
                <li>Laporan boleh dicetak atau menganalisis data.</li>
                </ul>
                    </td>
                </tr>                
            </table>
        </div>
      </div>
      <div class="lesson-wrap">
        <input type="radio" id="lesson-2" name="lesson">
        <label for="lesson-2"><div>Langkah-langkah Pembinaan Pangkalan Data</div> <div class="cross"></div></label>
        <div class="content">
            <p>Pangkalan data dibina berdasarkan beberapa langkah. Rajah menunjukkan langkah-langkah untuk membina pangkalan data berdasarkan situasi berikut:</p>
            <blockquote>
                <b> SMK Sinar Gemilang mengalami masalah untuk mendapatkan analisis keputusan
                    peperiksaan murid-murid di sekolah tersebut dengan cepat kerana markah murid-murid
                    perlu dikira secara manual. Bagi menyelesaikan masalah ini, anda bercadang untuk
                    menghasilkan Sistem Maklumat Peperiksaan atau dikenali sebagai SisMaP.</b> 
            </blockquote>
            <ol>
                <li>Tentukan tujuan pembinaan pangkalan data</li>
                    <ul>
                        <li>untuk menghasilkan analisis keputusan peperiksaan dengan cepat</li>
                    </ul>
                <li>Menentukan entiti yang diperlukan oleh SisMaP</li>
                    <ul>
                        <li>entiti MURID</li>
                        <li>entiti MARKAH</li>
                    </ul>
                <li>Menentukan atribut yang diperlukan bagi SisMaP</li>
                    <ul>
                        <li>atribut-atribut bagi entiti MURID ialah ID_Murid,
                            Nama_Murid, Jantina, Kaum, Nama_Kelas, Nama_Guru_
                            Kelas</li>
                        <li>atribut-atribut bagi entiti MARKAH ialah ID_Markah,
                            ID_Murid, BM, BI, Sn, Mate, Sej, Geo, ASK</li>
                    </ul>
                <li>Menentukan hubungan dan kekardinalan yang diperlukan bagi SisMaP</li>
                    <ul>
                        <li>Entiti MURID Kekunci primer: ID_Murid</li>
                        <li>Entiti MARKAH Kekunci primer: ID_Markah Kekunci asing: ID_Murid</li>
                        <li>Kekardinalan Hubungan <i>one to many</i> (1:M)</li>
                    </ul>
                <li>Menghasilkan pangkalan data SisMaP</li>
                    <ul>
                        <li>Jadual Membina dua jadual berdasarkan entiti MURID dan entiti MARKAH</li>
                        <li>Borang Membina dua borang berdasarkan jadual bagi entiti MURID dan entiti MARKAH</li>
                        <li>Pertanyaan (<i>Query</i>) Membina beberapa pertanyaan (<i>Query</i>) berdasarkan entiti MURID dan entiti
                            MARKAH menggunakan SQL</li>
                        <li>Laporan Menghasilkan laporan berdasarkan hasil pertanyaan (<i>Query</i>)</li>
                    </ul>
            </ol> 
        </div>
      </div>
      <div class="lesson-wrap">
        <input type="radio" id="lesson-3" name="lesson">
        <label for="lesson-3"><div>Langkah-langkah Pencapaian Kepada Perisian Aplikasi <i>Microsoft Access</i></div> <div class="cross"></div></label>
        <div class="content">
            <p>Capaian kepada perisian aplikasi <i>Microsoft Access</i></p>
            <ol>
                <li>Lancarkan perisian aplikasi <i>Microsoft Access</i> dan pilih pangkalan data yang kosong
                <img src="materials/diagram5.1.1.png" alt="Langkah 1" class="center"></li>
                <li>Klik ikon <i>fail</i> untuk pilih lokasi simpanan pangkalan data anda.
                <img src="materials/diagram5.1.2.png" alt="Langkah 2" class="center"></li>
                <li>Bina satu folder baharu bernama <b>PANGKALAN DATA</b> dalam <b>Documents</b> komputer anda.
                    Namakan fail anda <b>TUGASAN1</b> dan klik <b>OK</b>.
                <img src="materials/diagram5.1.3.png" alt="Langkah 3" class="center"></li>
                <li>Paparan berikut akan dipaparkan. Klik <b>Create</b> untuk membina pangkalan data TUGASAN1.
                <img src="materials/diagram5.1.4.png" alt="Langkah 4" class="center"></li>
            </ol> 
        </div>
      </div>
    </div>
  </div>

  <div class="wrap-2">
    <input type="radio" id="tab-2" name="tabs">
    <label for="tab-2"><div>Langkah-langkah Membina Pangkalan Data Yang Terdiri Daripada Entiti (<i>Table</i>)</div><div class="cross"></div></label>
    <div class="content">
        <p> Dalam satu pangkalan data, jadual (<i>table</i>) digunakan untuk menyimpan data bagi sesuatu entiti. Rajah menunjukkan
            langkah-langkah untuk membina jadual.</p>
        <ol>
            <li>Setelah melengkapkan langkah-langkah dalam Rajah bahagian atas <b>(langkah-langkah pencapaian kepada perisian aplikasi Microsoft Access)</b>, paparan di bawah diperhatikan.
                <img src="materials/diagram5.2.1.png" alt="Langkah1" class="center"></li>
            <li>Klik ikon <b><i>View</i></b> untuk mendapatkan paparan seperti berikut.
                <img src="materials/diagram5.2.2.png" alt="Langkah2" class="center"></li>
            <li>Ubahkan nama Table1 kepada <b>MURID</b> dan klik <b>OK</b>.
                <img src="materials/diagram5.2.3.png" alt="Langkah3" class="center"></li>
        </ol>
  </div>
  </div>
  <div class="wrap-3">
    <input type="radio" id="tab-3" name="tabs">
    <label for="tab-3"><div>Langkah-langkah Membina Pangkalan Data Yang Terdiri Daripada Atribut (<i>Field</i>)</div><div class="cross"></div></label>
    <div class="content">
        <p> Pada peringkat ini, medan-medan (lajur-lajur jadual) dicipta untuk mewakili atribut-atribut bagi entiti. Pada masa yang sama,
            jenis data yang bersesuaian bagi setiap medan (atribut) perlu ditetapkan.</p>
        <p> Jadual di bawah menunjukkan beberapa jenis data yang
            boleh ditetapkan dalam perisian aplikasi Microsoft Access.</p>
        <table>
            <tr>
                <th>Jenis Data</th>
                <th>Penerangan Jenis Data</th>
            </tr>
            <tr>
                <td><i>AutoNumber</i></td>
                <td>Menjana pembilang secara automatik dalam susunan menaik.</td>
            </tr>
            <tr>
                <td><i>Text/Short Text</i></td>
                <td>Panjang yang terhad kepada maksimum 255 aksara sahaja.</td>
            </tr>
            <tr>
                <td><i>Memo/Long Text</i></td>
                <td>Boleh menyimpan teks sehingga satu Gigabait.</td>
            </tr>
            <tr>
                <td><i>Number</i></td>
                <td>Hanya menyimpan nilai angka.</td>
            </tr>
            <tr>
                <td><i>Number</i></td>
                <td>Nilai tarikh dan masa bagi tahun bermula daripada 100 hingga 9999.</td>
            </tr>
        </table>
        <p><b>Perisian aplikasi Microsoft Access tidak membenarkan nama atribut mengandungi 
              simbol-simbol seperti titik (.), tanda seruan (!) dan tanda sama dengan (=).</b></p>
    </div>
    <div class="lessons">
      <div class="lesson-wrap">
        <input type="radio" id="lesson-4" name="lesson">
        <label for="lesson-4"><div>Langkah-langkah Mencipta Medan-medan Bagi Jadual (Entiti) Yang Dibina</div> <div class="cross"></div></label>
        <div class="content">
            <ol>
                <li>Klik ikon <b>View</b> dan pilih <b>Design View</b>. Kemudian, masukkan nama medan dan jenis data.
                <img src="materials/diagram5.3.1.png" alt="Langkah 1" class="center"></li>
                <li>Medan-medan (lajur-lajur) bagi atribut-atribut yang seterusnya boleh dicipta dengan menaip nama atribut yang dikehendaki pada ruangan <b>Field Name</b>
                    pada baris seterusnya. Bagi jenis data pula, anda hanya perlu memilih daripada senarai yang telah disediakan.
                <img src="materials/diagram5.3.2.png" alt="Langkah 2" class="center"></li>
            </ol>
        </div>
      </div>
      <div class="lesson-wrap">
        <input type="radio" id="lesson-5" name="lesson">
        <label for="lesson-5"><div>Langkah-langkah Menetapkan Kekunci Primer</div> <div class="cross"></div></label>
        <div class="content">
            <p> Perisian aplikasi Microsoft Access secara automatik akan menjadikan atribut pertama sebagai kekunci primer. Walau
                bagaimanapun, anda boleh menetapkan sendiri medan lain untuk dijadikan sebagai kekunci primer.</p>
            <p> Rajah di bawah menunjukkan
                langkah-langkah untuk menetapkan kekunci primer.</p>
            <ol>
                <li>Pilih atribut yang mempunyai nilai-nilai unik sebagai kekunci primer. Klik pada
                    nama medan yang berpadanan dengan atribut ini.</li>
                <li>Klik <b>Primary Key</b><img src="materials/diagram5.4.png" alt="Kekunci Primer" class="center"></li>
            </ol>
        </div>
      </div>
        <div class="lesson-wrap">
        <input type="radio" id="lesson-6" name="lesson">
        <label for="lesson-6"><div>Langkah-langkah Membina Jadual (<i>Table</i>) Seterusnya</div> <div class="cross"></div></label>
        <div class="content">
            <p> Jadual untuk entiti yang kedua dan seterusnya boleh dibina dengan menggunakan ikon yang terdapat pada bar menu (<i>menu
                bar</i>). Pemberian nama kepada suatu jadual perlu bersesuaian dengan entiti berkenaan serta atribut-atribut yang terdapat di
                dalamnya.</p>
            <p> Rajah di bawah menunjukkan langkah-langkah untuk membina dan menamakan jadual bagi entiti yang kedua.</p>
            <ol>
                <li>Bina satu jadual baharu dengan klik <b>Create</b> di bar menu. Kemudian, klik ikon <b>Table</b>.
                <img src="materials/diagram5.5.1.png" alt="Langkah 1" class="center"></li>
                <li>Klik <b>View</b> dan pilih <b>Design View</b>. Tetingkap <b>Save As</b> akan dipaparkan. Namakan jadual ini sebagai
                    MARKAH dan klik <b>OK</b>.
                    <img src="materials/diagram5.5.2.png" alt="Langkah 2" class="center"></li>
            </ol>
            <p> Rajah di bawah menunjukkan medan-medan yang ditambahkan kepada jadual MARKAH dan jenis data yang sesuai ditetapkan
                bagi medan-medan itu.</p>
            <img src="materials/diagram5.6.png" alt="Medan-medan untuk jadual MARKAH" class="center">
        </div>
      </div>
    </div>
  </div>
    <div class="wrap-4">
    <input type="radio" id="tab-4" name="tabs">
    <label for="tab-4"><div>Langkah-langkah Mewujudkan Hubungan Antara Jadual (Entiti)</div><div class="cross"></div></label>
    <div class="content">
        <p> Selepas semua jadual dibina dan data telah lengkap diisi, perhubungan kedua-dua jadual
            perlu dibina. Perhubungan antara entiti MURID dan entiti MARKAH ialah kekardinalan
            one to one (1:1) kerana setiap murid akan mempunyai satu set markah mengikut mata
            pelajaran masing-masing. </p>
    </div>
    <div class="lessons">
      <div class="lesson-wrap">
        <input type="radio" id="lesson-7" name="lesson">
        <label for="lesson-7"><div>Langkah-langkah Membina Hubungan (<i>Relationships</i>) Bagi Jadual MURID dan Jadual MARKAH</div> <div class="cross"></div></label>
        <div class="content">
         <p> Rajah di bawah menunjukkan langkah-langkah untuk membina hubungan (<i>relationships</i>) bagi jadual MURID dan jadual MARKAH.</p>
        <ol>
            <li>Klik <b>Database Tools</b> di bar menu. Kemudian, klik <b>Relationships</b>.
                <img src="materials/diagram5.7.1.png" alt="Langkah1" class="center"></li>
            <li>Klik <b>Show Table</b> dan paparan berikut akan diperhatikan. Pilih jadual MURID
                dan klik Add. Kemudian, pilih jadual MARKAH dan klik <b>Add</b>.
                <img src="materials/diagram5.7.2.png" alt="Langkah2" class="center"></li>
        </ol>
        <p> Perhatikan kedua-dua entiti MARKAH dan entiti MURID mempunyai atribut ID_Murid serta menggunakan atribut
            ini sebagai kekunci primer. Oleh itu, atribut ID_Murid sesuai digunakan untuk menghubungkan kedua-dua entiti ini dalam
            satu hubungan one to many (1:M). </p>
        </div>
      </div>
      <div class="lesson-wrap">
        <input type="radio" id="lesson-8" name="lesson">
        <label for="lesson-8"><div>Langkah-langkah Menghubungkaitkan Kedua-dua Jadual MURID Dan MARKAH</div> <div class="cross"></div></label>
        <div class="content">
        <p> Rajah di bawah menunjukkan langkah-langkah untuk menghubungkaitkan kedua-dua jadual MURID dan MARKAH.</p>
        <ol>
            <li>Klik dan seret tetikus daripada atribut ID_Murid pada entiti MURID sehingga menyentuh atribut ID_Murid pada entiti MARKAH. Tetingkap <b>Edit
                Relationships</b> akan dipaparkan.</li>
            <li>Dalam tetingkap <b>Edit Relationships</b>, klik petak <b>Enforce Referential Integrity</b>
                bagi membolehkan hubungan kekardinalan one to many (1:M) dipaparkan.
                Kemudian, klik <b>Create.</b>
                <img src="materials/diagram5.8.1.png" alt="Langkah2" class="center"></li>
            <li>Penetapan hubungan kekardinalan one to many (1:M) bagi kedua-dua jadual telah siap dibina.
                Paparan berikut yang menunjukkan jadual MURID telah berjaya dihubungkan dengan jadual MARKAH melalui kekunci primer ID_Murid.
                <img src="materials/diagram5.8.2.png" alt="Langkah3" class="center"></li>
        </ol>
        </div>
      </div>
      <div class="lesson-wrap">
        <input type="radio" id="lesson-9" name="lesson">
        <label for="lesson-9"><div>Langkah-langkah Memasukkan Data Ke Dalam Jadual</div><div class="cross"></div></label>
        <div class="content">
        <p> Rajah di bawah menunjukkan langkah-langkah untuk memasukkan data-data ke dalam jadual MURID dan jadual MARKAH.</p>
        <ol>
            <li>Klik <b>View</b> dan pilih <b>Datasheet View</b>.
                <img src="materials/diagram5.9.1.png" alt="Langkah1" class="center"></li>
            <li>Setelah <b>Datasheet View</b> dibuka, anda boleh memasukkan data-data bagi semua
                medan untuk jadual MURID dan jadual MARKAH.
                <img src="materials/diagram5.9.2.png" alt="Langkah2" class="center">
                <img src="materials/diagram5.9.3.png" alt="Langkah3" class="center"></li>
        </ol>
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