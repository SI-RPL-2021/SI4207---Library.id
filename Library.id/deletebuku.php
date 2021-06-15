<?php

require "connect.php";

session_start();
$admin = new Admin($db, $_SESSION["id"]);

$buku = new Buku($db);
$buku = $buku->getBukuById($_GET["id"]);

require "actions/deletebuku.php";