<%-- 
    Document   : FAQ
    Created on : Jan 2, 2021, 9:46:18 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
        <%@ include file="jsp/meta.jsp"%>
        <title>FAQ</title>
        <%@ include file="jsp/header.jsp"%>
    </head>
    <body>
        <div class="page-container">
            <div class="page-cont-row">

    <div class="wrapper">

        <h1>SOALAN - SOALAN LAZIM</h1>
    <div class="wrap-1">
    <input type="radio" id="tab-1" name="tabs">
    <label for="tab-1"><div>Latihan</div><div class="cross"></div></label>
    <div class="content">
        <ol>
            <li>Bolehkah saya menjawab soalan tanpa daftar masuk?</li>
            <ul>
                <li>Tidak boleh kerana pengguna haruslah daftar masuk dahulu untuk dapat menggunakan perkhidmatan dengan lebih optima</li>
            </ul>
            <li>Adakah saya perlu membayar untuk daftar masuk?</li>
            <ul>
                <li>Tidak perlu</li>
            </ul>
            <li>Bagaimana untuk mencuba latihan</li>
                <ul>
                    <li>Jika sudah daftar masuk, tekan aktiviti pilih ujian kemudian tekan cuba latihan</li>
                </ul>
            <li>Bolehkah saya melihat keputusan latihan saya?</li>
            <ul>
                <li>Ya, jika sudah daftar masuk pergi ke halaman akaun untuk melihat skor anda</li>
            </ul>
            <li>Bagaimana untuk mencuba semula latihan?</li>
            <ul>
                <li>Pergi ke halaman latihan untuk membuat latihan lagi</li>
            </ul>
            
        </ol>
    </div>
  </div>
  <div class="wrap-2">
    <input type="radio" id="tab-2" name="tabs">
    <label for="tab-2"><div>Ujian</div><div class="cross"></div></label>
    <div class="content">
        <ol>
            <li>Bolehkah saya menjawab soalan tanpa daftar masuk?</li>
            <ul>
                <li>Tidak boleh kerana pengguna haruslah daftar masuk dahulu untuk dapat menggunakan perkhidmatan dengan lebih optima</li>
            </ul>
            <li>Adakah saya perlu membayar untuk daftar masuk?</li>
            <ul>
                <li>Tidak perlu</li>
            </ul>
            <li>Bagaimana untuk mencuba ujian?</li>
                <ul>
                    <li>Jika sudah daftar masuk, tekan aktiviti pilih ujian kemudian pilih set yang ingin dibuat</li>
                </ul>
            <li>Bolehkah saya melihat keputusan ujian saya?</li>
            <ul>
                <li>Ya,jika sudah daftar masuk pergi ke halaman akaun untuk melihat skor anda</li>
            </ul>
            <li>Bagaimana untuk mencuba semula ujian?</li>
            <ul>
                <li>Pergi ke halaman ujian untuk membuat ujian lagi</li>
            </ul>            
        </ol>
    </div> 
  </div>
  <div class="wrap-3">
    <input type="radio" id="tab-3" name="tabs">
    <label for="tab-3"><div>Akaun</div><div class="cross"></div></label>
    <div class="content">
        <ol>
            <li>Bagaimana jika saya tidak mahu daftar atau log masuk?
                <ul>
                <li>Anda hanya boleh mengakses nota sahaja</li>
                </ul>
            </li>
            <li>Bagaimana cara untuk mengakses bahan nota?
                <ul>
                <li>Pergi ke halaman topik dan pilih subtopik yang ingin anda pelajari</li>
                </ul>
            </li>
            <li>Bagaimana untuk membuat akaun?
                <ul>
                <li>Pergi ke halaman daftar dan isi maklumat bagi pembukaan akaun baru
                <video  controls class="center">
                    <source src="videos/register.mp4" type="video/mp4">
                </video>
                </li>
                </ul>
            </li>
            <li>Bagaimana untuk mengemaskini maklumat profil?
                <ul>
                <li>Di halaman akaun, klik ubah profil, isi maklumat dan klik butang simpan.
                <video  controls class="center">
                    <source src="videos/updateProfile.mp4" type="video/mp4">
                </video>
                </li>
                </ul>
            </li>
            <li>Bagaimana untuk memuatnaik gambar profil?
                <ul>
                <li>Di halaman akaun, klik di gambar profil, muatnaik gambar dan tekan butang simpan.
                <video  controls class="center">
                    <source src="videos/uploadImage.mp4" type="video/mp4">
                </video>
                </li>
                </ul>
            </li>
            <li>Bagaimana untuk memadam akaun?
                <ul>
                <li>Pergi ke halaman akaun dan tekan butang tutup akaun. [Akaun yang ditutup akan padam secara kekal
                <video  controls class="center">
                    <source src="videos/delete.mp4" type="video/mp4">
                </video>
                </li>
                </ul>
            </li>
        </ol>
    </div> 
  </div>
</div>       
        </div>
        </div>
    </body>
    <%@ include file="jsp/footer.jsp"%>
</html>
