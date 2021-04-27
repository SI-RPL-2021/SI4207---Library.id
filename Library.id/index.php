<?php

session_start();

if (isset($_SESSION["id"]))
{
    header("Location: homepage");
    exit;
}

header("Location: welcomepage");
exit;