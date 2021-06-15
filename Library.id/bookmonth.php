<?php
require "connect.php";
session_start();
if ($_SESSION["role"] == "user")
{
    $user = new User($db,$_SESSION["id"]);
    require "view/bookmonth.php";
}