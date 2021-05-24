<?php
session_start();
include "koneksi.php";
if($_GET['aksi']=="login"){
  $user = $_POST['username'];
  $pass = md5($_POST['password']);

  $cek = "SELECT * FROM tbl_user WHERE username='$user' AND password='$pass'";
  $data = $conn->query($cek);
  $jml = mysqli_num_rows($data);
  if($jml==0){
    echo '<script language="javascript">alert("Invalid username or password!"); document.location="index.php";</script>';
  }else{
    while ($row = $data->fetch_array()) {
        if($row['level']==1){
          $_SESSION['user']=$user;
  				echo '<script language="javascript">alert("Anda berhasil Login Sebagai Kasir!"); document.location="pesan.php";</script>';
        }else{
          $_SESSION['user']=$user;
  				echo '<script language="javascript">alert("Anda berhasil Login Sebagai Koki!"); document.location="tampil.php";</script>';
        }
    }
  }
}elseif ($_GET['aksi']=="insert") {
  $ins = "INSERT INTO tbl_transaksi (fanta, coca_cola, pepsi, ice_cream, fried_chicken, burger, french_fries, spaghetti, status) VALUES ('$_POST[fanta]', '$_POST[cocacola]', '$_POST[pepsi]', '$_POST[icecream]', '$_POST[friedchicken]', '$_POST[burger]', '$_POST[frenchfries]', '$_POST[spaghetti]', 'Waiting')";
  $conn->query($ins);
  header("location: pesan.php");
}elseif ($_GET['aksi']=="update") {
  $upd = "UPDATE tbl_transaksi SET status='Selesai' WHERE id_transaksi=$_GET[no]";
  $conn->query($upd);
  header("location: tampil.php");
}elseif($_GET['aksi']=="add"){
  $user = $_POST['username'];
  $pass = md5($_POST['password']);
  $add = "INSERT INTO tbl_user (username, password) VALUES ('$user', '$pass')";
  $conn->query($add);
  header("location: admin.php");
}
?>
