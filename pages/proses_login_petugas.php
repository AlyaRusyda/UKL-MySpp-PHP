<?php 
    if($_POST){
        $username=$_POST['username'];
        $password=$_POST['password'];
        $login=$_POST['role'];
        if(empty($username)){
            echo "<script>alert('Username tidak boleh kosong');location.href='sign-in-petugas.html';</script>";
        } elseif(empty($password)){
            echo "<script>alert('Password tidak boleh kosong');location.href='sign-in-petugas.html';</script>";
        } else {
            if ($login == 'admin') { //Jika Pengakses Memilih Petugas
                include "connect.php";
                $password = md5($password);
                $query = mysqli_query($conn, "select * from petugas where username = '".$username."' and password = '".$password."' and level = '".$login."'"); //Mencari Data Pada Database
                $cek = mysqli_num_rows($query); //Cek Ketersediaan
                if ($cek > 0) { //Jika Tidak Kosong
                    session_start();
                    $data_login = mysqli_fetch_array($query);
                    $_SESSION['masuk'] = $user; //Membuat Session
                    $_SESSION['id_petugas'] = $data_login['id_petugas'];
                    header("location: dashboard_admin.html"); //Memuat Ulang Halaman
                }                                                                                           
                else {//Jika Kosong
                    echo "<center><div class='peringatan'>Username Atau Password Untuk Admin Salah!</div></center>";
                }
            } elseif ($login == 'petugas') {
                include "connect.php";
                $password = md5($password);
                $query = mysqli_query($conn, "select * from petugas WHERE username = '".$username."' and password = '".$password."' and level = '".$login."'"); //Mencari Data Pada Database
                $cek = mysqli_num_rows($query); //Cek Ketersediaan
                if ($cek > 0) { //Jika Tidak Kosong
                    session_start();
                    $data_login = mysqli_fetch_array($query);
                    $_SESSION['masuk'] = $user; //Membuat Session
                    $_SESSION['id_petugas'] = $data_login['id_petugas'];
                    header("location: dashboard_petugas.html"); //Memuat Ulang Halaman
                }
                else{//Jika Kosong
                    echo $cek;
                echo "<center><div class='peringatan'>Username Atau Password Untuk Petugas Salah!</div></center>";
                }
            }
        }
    }
