<?php
    if($_GET['id_spp']){
        include "../connect.php";
        $qry_hapus=mysqli_query($conn,"delete from spp where id_spp='".$_GET['id_spp']."'");
        if($qry_hapus){
            echo "<script>alert('Sukses Hapus Data SPP');location.href='../petugas/admin-tampil_spp.php';</script>";
        } else {
            echo "<script>alert('Gagal hapus Data SPP');location.href='../petugas/admin-tampil_spp.php';</script>";
        }
    }
?>