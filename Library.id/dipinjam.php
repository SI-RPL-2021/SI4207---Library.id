<?php
require "connect.php";
session_start();
if ($_SESSION["role"] == "user")
{
    $user = new User($db,$_SESSION["id"]);
    $pnj = new Peminjaman($db);
    $pnj->deleteIf3HariSudahBerlalu();
    $dpinjam = $pnj->getBukuDiPinjam($_SESSION["id"]);
    require "view/dipinjam.php";
}