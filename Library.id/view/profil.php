<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/app.css" rel="stylesheet">
    <title>Profil - Library.id</title>
</head>

<body style="background-color: rgb(243, 243, 243);">
    <!-- Navbar -->
    <?php
    $profil = "active";
    require "view/navbar-user.php";
    ?>
    <br>

    <div class="container mt-3">
        <form method="post" action="actions/editprofil">
            <div class="mb-3">
                <p>Nama</p>
                <input name="nama" value="<?php echo $user->nama ?>" class="form-control">
            </div>
            <div class="mb-3">
                <p>No Telp</p>
                <input name="no_telp" value="<?php echo $user->no_telp ?>" class="form-control">
            </div>
            <div class="mb-3">
                <p>Email</p>
                <input name="email" value="<?php echo $user->email ?>" class="form-control">
            </div>
            <div class="mb-3">
                <p>Ubah Password (Kosongkan jika tidak ingin mengganti)</p>
                <input name="password" class="form-control">
            </div>
            <div class="mb-3">
                <p>Password Lama</p>
                <input name="cpassword" class="form-control">
            </div>
            <button class="btn btn-danger">Edit</button>
        </form>

    </div>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>

</html>