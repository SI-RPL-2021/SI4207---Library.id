<?php

require "connect.php";
session_start();
if ($_SESSION["role"] == "user")
{
    $user = new User($db,$_SESSION["id"]);
    $buku = new Buku($db);
    $buku = $buku->getBukuById($_GET["id"]);
    require "view/baca.php";
}
