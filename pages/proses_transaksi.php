<?php
include "connect.php";
	if($_GET['id_pembayaran']){

		$qry_pembayaran=mysqli_query($conn,"select * from pembayaran join spp on spp.id_spp = pembayaran.id_spp where pembayaran.id_pembayaran = " .$_GET['id_pembayaran'] );
		$data_pembayaran=mysqli_fetch_array($qry_pembayaran);

		$id_pembayaran 	= $_GET['id_pembayaran'];
		$nisn	= $_GET['nisn'];
		
		//tanggal Bayar
		$tgl_bayar 	= date('Y-m-d');

		mysqli_query($conn, "UPDATE pembayaran SET tgl_bayar='$tgl_bayar', keterangan='lunas' WHERE id_pembayaran='$id_pembayaran'");
		header('location:transaksi-siswa.php?nisn='.$nisn);
	}
?>