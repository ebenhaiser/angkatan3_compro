<?php
$connectionHost = "localhost";
$connectionUsername = "root";
$ConnectionPassword = "";
$connectionDatabase = "angkatan3_compro";

$connection = mysqli_connect($connectionHost, $connectionUsername, $ConnectionPassword, $connectionDatabase);

if (!$connection) {
    echo "Koneksi Gagal";
}