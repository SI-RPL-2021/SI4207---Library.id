<?php
require "../connect.php";

session_start();

$buku = new Buku($db);
$buku->judul = $_POST["judul"];
$buku->pengarang = $_POST["pengarang"];
$buku->preview = $_POST["preview"];
$buku->uploadFoto($_FILES["foto"]);
$buku->uploadBuku($_FILES["buku"]);
$buku->tambah($_POST);

header("location: ../tambahbuku?success=1");