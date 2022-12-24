<?php
$koneksi = mysqli_connect("localhost","root","","EmoteHelp");

if(mysqli_connect_errno()){
    echo "Gagal Terkoneksi ke Database:".mysqli_connect_error();
}
?>