<?php

require "connect.php";

session_start();

$book = new Buku($db);
$book = $book->getBukuById($_GET["id"]);
$res = $db->conn->query("SELECT * FROM buku ORDER BY RAND() LIMIT 1");

if ($_SESSION["role"] == "user")
{
    $user = new User($db, $_SESSION["id"]);
    require "view/preview-user.php";
}
else
{
    $admin = new Admin($db, $_SESSION["id"]);
    require "view/preview-admin.php";
}

?>