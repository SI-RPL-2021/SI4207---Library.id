<?php

require "../connect.php";

session_start();

if ($_POST["password"] != $_POST["confirmpassword"])
{
    header("Location: ../registrasi?err=1");
}

$reg = new RegisterUser($db);
$reg->nama = $_POST["nama"];
$reg->email = $_POST["email"];
$reg->username = $_POST["username"];
$reg->no_ktp = $_POST["no_ktp"];
$reg->no_telp = $_POST["no_telp"];
$reg->password = $_POST["password"];

$user = $reg->register();

header("Location: ../login");