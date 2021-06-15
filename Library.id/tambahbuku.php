<?php

require "connect.php";

session_start();
$admin = new Admin($db, $_SESSION["id"]);
require "view/tambahbuku.php";