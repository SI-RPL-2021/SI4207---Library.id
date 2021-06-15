<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/app.css" rel="stylesheet">
    <title>Pinjam - Library.id</title>
</head>

<body style="background-color: rgb(243, 243, 243);">
    <!-- Navbar -->
    <?php
    require "view/navbar-user.php";
    ?>
    <br>

    <div class="shadow container p-3 bg-white" style="max-width:600px;">
        <form method="post" action="actions/pinjam">
            <input type="hidden" name="buku_id" value="<?php echo $book["id"] ?>">
            <p class="font-weight-bold">Pinjam Buku : <?php echo $book["judul"] ?></p>
            <div class="mb-3">
                <p class="text-danger">Buku akan kembali terkunci setelah 3 hari peminjaman</p>
                <p>Input Tanggal Peminjaman</p>
                <input required class="form-control" type="date" name="tanggal_peminjaman">
            </div>
            <button class="btn btn-danger">Pinjam</button>
        </form>
    </div>

</body>
</html>