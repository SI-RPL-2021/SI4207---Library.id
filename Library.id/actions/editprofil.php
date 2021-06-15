<?php
require "../connect.php";

$_METHOD = $_POST;

session_start();

$user = new User($db,$_SESSION["id"]);
if ($user->password != $_METHOD["cpassword"])
{
    header("location: ../profil?fail=1");
    exit;
}

$user->nama = $_METHOD["nama"];
$user->no_telp = $_METHOD["no_telp"];
$user->email = $_METHOD["email"];
if (strlen($_METHOD["password"]) > 0)
{
    $user->password = $_METHOD["password"];
}
$user->edit();

header("location: ../profil?success=1");