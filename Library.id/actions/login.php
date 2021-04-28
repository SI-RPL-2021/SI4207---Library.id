<?php

require "../connect.php";

session_start();

$login = new LoginUser($db);
$login->email = $_POST["email"];
$login->password = $_POST["password"];
$r = $login->login();

var_dump($r);

if ($r != null)
{
    $_SESSION["id"] = $r["id"];
    $_SESSION["role"] = "user";
    header("Location: ../homepage");
    exit;
}
else
{
    header("Location: ../login?err=1");
}

?>