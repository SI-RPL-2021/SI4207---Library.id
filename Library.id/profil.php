<?php

require "connect.php";

session_start();

if ($_SESSION["role"] == "user")
{
    $user = new User($db, $_SESSION["id"]);
    require "view/profil.php";
}
else
{
    $admin = new Admin($db, $_SESSION["id"]);
    require "view/kategori-admin.php";
}
//
?>