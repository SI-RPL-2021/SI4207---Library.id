<?php

require "connect.php";

session_start();

if ($_SESSION["role"] == "user")
{
    $user = new User($db, $_SESSION["id"]);
    require "view/homepage-user.php";
}
else
{
    $admin = new Admin($db, $_SESSION["id"]);
    require "view/tambahbuku.php";
}

?>