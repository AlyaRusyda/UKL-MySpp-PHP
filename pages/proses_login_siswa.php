<?php
if ($_POST) {
    $nisn = $_POST['nisn'];
    include "../connect.php";
    $query = mysqli_query($conn, "select * from siswa where nisn = '" . $nisn . "'"); //Mencari Data Pada Database
    $cek = mysqli_num_rows($query); //Cek Ketersediaan
    if (empty($nisn)) {
        echo "<script>alert('Username tidak boleh kosong');location.href='../login_siswa.html';</script>";
    } else {
        if ($cek > 0) { //Jika Tidak Kosong
            session_start();
            $data_login = mysqli_fetch_array($query);
            $_SESSION['masuk'] = $user; //Membuat Session
            $_SESSION['nisn'] = $data_login['nisn'];
            header("location: ../dashboard_siswa.php"); //Memuat Ulang Halaman
        } else { //Jika Kosong
            echo "<center><div class='peringatan'>NISN Untuk Siswa Salah!</div></center>";
        }
    }
}
