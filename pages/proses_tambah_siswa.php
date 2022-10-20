<?php
session_start();
if ($_POST) {
    $nisn = $_POST['nisn'];
    $nis = $_POST['nis'];
    $nama = $_POST['nama'];
    $id_kelas = $_POST['id_kelas'];
    $alamat = $_POST['alamat'];
    $no_tlp = $_POST['no_tlp'];
    $id_spp = $_POST['id_spp'];
    $awal_tempo = $_POST['jatuh_tempo'];

    if (empty($nisn)) {
        echo "<script>alert('nisn siswa tidak boleh kosong');location.href='admin-tampil_siswa.php';</script>";
    } elseif (empty($nama)) {
        echo "<script>alert('nama siswa tidak boleh kosong');location.href='admin-tampil_siswa.php';</script>";
    } elseif (empty($no_tlp)) {
        echo "<script>alert('no telp tidak boleh kosong');location.href='admin-tampil_siswa.php';</script>";
    } elseif (empty($alamat)) {
        echo "<script>alert('alamat tidak boleh kosong');location.href='admin-tampil_siswa.php';</script>";
    } elseif (empty($nis)) {
        echo "<script>alert('nis tidak boleh kosong');location.href='admin-tampil_siswa.php';</script>";
    } elseif (empty($id_kelas)) {
        echo "<script>alert('kelas tidak boleh kosong');location.href='admin-tampil_siswa.php';</script>";
    } else {
        include "connect.php";
        $insert = mysqli_query($conn, "insert into siswa (nisn, nis, nama, id_kelas, alamat, no_tlp) value ('" . $nisn . "','" . $nis . "','" . $nama . "','" . $id_kelas . "','" . $alamat . "','" . $no_tlp . "')") or
            die(mysqli_error($conn));
        if (!$insert) {
            echo "<script>alert('gagal tambah siswa');location.href='admin-tampil_siswa.php';</script>";
        } else {
            for ($i = 0; $i < 12; $i++) {
                $jatuh_tempo = date("Y-m-d", strtotime("+$i month", strtotime($awal_tempo)));
                $bulan = date("m", strtotime($jatuh_tempo));
                $tahun = date("Y", strtotime($jatuh_tempo));

                $add = mysqli_query($conn, "insert into pembayaran(id_petugas, nisn, jatuh_tempo, bulan_spp, tahun_spp, id_spp, keterangan)value('".$_SESSION['id_petugas']."','" . $nisn . "','" . $jatuh_tempo . "', '" . $bulan . "', '" . $tahun . "','".$id_spp."','belum lunas')");
                echo "<script>alert('Sukses tambah siswa');location.href='admin-tampil_siswa.php';</script>";
            }
        }
    }
}
