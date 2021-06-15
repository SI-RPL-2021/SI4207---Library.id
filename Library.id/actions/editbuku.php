<?php
require "../connect.php";

$_METHOD = $_POST;

session_start();

$buku = new Buku($db);
$get = $buku->getBukuById($_METHOD["id"]);
$buku->id = $get["id"];
$buku->judul = $_METHOD["judul"];
$buku->pengarang = $_METHOD["pengarang"];
$buku->preview = $_METHOD["preview"];

if ($_FILES["foto"]) {
    $buku->uploadFoto($_FILES["foto"]);
}
$buku->edit();

header("location: ../editbuku?success=1&id=".$_METHOD["id"]);