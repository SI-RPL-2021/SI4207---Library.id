<?php

require "connect.php";
session_start();
if ($_SESSION["role"] == "user")
{
    $book = new Buku($db);
    $book = $book->getBukuById($_GET["id"]);
    $user = new User($db, $_SESSION["id"]);
    require "view/pinjam.php";
}
else
{
    echo "Tidak tersedia untuk role ".$_SESSION["role"];
}