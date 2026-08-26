<?php
$koneksi = mysqli_connect("localhost", "root", "", "praktikum11");

if (!$koneksi) {
    die("Koneksi database gagal");
}

define('BASE_PATH', __DIR__);
define('BASE_URL', '/praktikum11');