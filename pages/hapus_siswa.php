<?php
    if($_GET['nisn']){
        include "../connect.php";
        $qry_hapus=mysqli_query($conn,"delete from siswa where nisn='".$_GET['nisn']."'");
        if($qry_hapus){
            echo "<script>alert('Sukses hapus siswa');location.href='../petugas/admin-tampil_siswa.php';</script>";
        } else {
            echo "<script>alert('Gagal hapus siswa');location.href='../petugas/admin-tampil_siswa.php';</script>";
        }
    }
?>