<?php
    if($_GET['id_kelas']){
        include "../connect.php";
        $qry_hapus=mysqli_query($conn,"delete from kelas where id_kelas='".$_GET['id_kelas']."'");
        if($qry_hapus){
            echo "<script>alert('Sukses Hapus Kelas');location.href='../petugas/admin-tampil_kelas.php';</script>";
        } else {
            echo "<script>alert('Gagal hapus Kelas');location.href='../petugas/admin-tampil_kelas.php';</script>";
        }
    }
?>