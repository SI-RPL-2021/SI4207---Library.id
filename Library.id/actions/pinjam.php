<?php
require "../connect.php";

$_METHOD = $_POST;

session_start();

$buku = new Buku($db);
$get = $buku->getBukuById($_METHOD["buku_id"]);
$buku->id = $get["id"];
$buku->judul = $get["judul"];
$buku->pengarang = $get["pengarang"];
$buku->preview = $get["preview"];
$buku->buku= $get["buku"];
$buku->foto= $get["foto"];
$buku->total_peminjam = intval($buku->total_peminjam)+1;
$buku->edit();

$peminjaman = new Peminjaman($db);
$peminjaman->buku_id = $_METHOD["buku_id"];
$peminjaman->user_id = $_SESSION["id"];
$peminjaman->tanggal_peminjaman = $_METHOD["tanggal_peminjaman"];
$peminjaman->tanggal_selesai_peminjaman = date('Y-m-d', strtotime($_METHOD["tanggal_peminjaman"]. ' + 3 days'));
$peminjaman->tambah();

header("location:../dipinjam");