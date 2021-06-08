<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/app.css" rel="stylesheet">
    <title>Baca - Library.id</title>
</head>

<body style="background-color: rgb(243, 243, 243);">
    <!-- Navbar -->
    <?php
    $dipinjam = "active";
    require "view/navbar-user.php";
    ?>
    <br>

    <div class="shadow container p-3 bg-white">
    <iframe width="100%" style="height:100vh" src="file_buku/<?php echo $buku["buku"]?>"></iframe>
    </iframe>
    </div>

<script>
</script>
</body>
</html>