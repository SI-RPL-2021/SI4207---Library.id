<?php

require "connect.php";

session_start();

if ($_SESSION["role"] == "user")
{
    $user = new User($db, $_SESSION["id"]);
    if (isset($_GET["k"]))
    {
        require "view/kategori_view.php";
    }else{
        require "view/kategori-user.php";
    }
}
else
{
    $admin = new Admin($db, $_SESSION["id"]);
    require "view/kategori-admin.php";
}

?>