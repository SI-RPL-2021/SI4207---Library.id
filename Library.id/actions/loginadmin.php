<?php

require "../connect.php";

session_start();

$login = new LoginAdmin($db);
$login->username = $_POST["username"];
$login->password = $_POST["password"];
$r = $login->login();

var_dump($r);

if ($r != null)
{
    $_SESSION["id"] = $r["id"];
    $_SESSION["role"] = "admin";
    header("Location: ../homepage");
    exit;
}
else
{
    header("Location: ../loginadmin?err=1");
}

?>