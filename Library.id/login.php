<?php

$alert = "";

if (isset($_GET["err"])) {
    if ($_GET["err"] == "1")
    {
        $alert = '<div class="alert alert-danger" role="alert">
        Email atau password salah!
      </div>';
    }
}


?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Login - Library.id</title>
</head>

<body background="img/undraw_Bookshelves_re_lxoy.svg">
    <!-- Navbar -->

    <nav class="navbar navbar-expand-lg navbar-dark bg-danger justify-content-between">
        <a class="navbar-brand" href="#">Library.id</a>
        <form class="form-inline">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarToggleExternalContentZz">
                <a class="btn btn-outline-light mr-2" href="registrasi">Registrasi</a>
            </div>

        </form>
        <div class="w-100 collapse" id="navbarToggleExternalContent">
            <a class="btn btn-outline-light mr-2 w-100 m-1 mt-3" href="registrasi">Registrasi</a>
        </div>
    </nav>

    <!-- Form Login -->
    <div class="container mt-3 d-flex justify-content-center">
        <form action="actions/login" method="post" enctype="multipart/form-data">
            <div class="row">
                <div class="col">
                    <div class="card">
                    <?php
    if (isset($_GET["justregistered"]))
    {
        echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
        Sukses membuat akun, silahkan login
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>';
    }
    ?>
                        <?php echo $alert; ?>
                        <div class="card-body">
                            <h1 class="mt-4 text-center">Login</h1><br>
                            <div class="form-group">
                                <label for="exampleInputEmail1">E-mail</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" required size="43px">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Kata Sandi</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" name="password" required size="43px">
                            </div>
                            <div class="form-group form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1" name="remember">
                                <label class="form-check-label" for="exampleCheck1">Remember me</label>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary" name="login">Login</button><br>
                                <p><br> belum punya akun? <a href="registrasi">Registrasi</a></p>
                                <p>login admin <a href="loginadmin">admin</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>


    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>

</html>