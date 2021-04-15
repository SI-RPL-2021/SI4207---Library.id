
<?php

$alert = "";

if (isset($_GET["err"]))
{
    
    if ($_GET["err"] == "1")
    {
        $alert = '<div class="alert alert-danger" role="alert">
        Konfirmasi password salah
      </div>';
    }
    if ($_GET["err"] == "2")
    {
        $alert = '<div class="alert alert-danger" role="alert">
        Email sudah dipakai!
      </div>';
    }
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/app.css" rel="stylesheet">
    <title>Register</title>
</head>



<title>Login - Library.id</title>
</head>

<body background="img/undraw_book_lover_mkck.svg " width=device-width, initial-scale=1, shrink-to-fit=no>

    <nav class="navbar navbar-expand-lg navbar-dark bg-danger justify-content-between">
        <a class="navbar-brand" href="#">Library.id</a>
        <form class="form-inline">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarToggleExternalContentZz">
                <a class="btn btn-outline-light mr-2" href="login">Login</a>
            </div>

        </form>
        <div class="w-100 collapse" id="navbarToggleExternalContent">
            <a class="btn btn-outline-light mr-2 w-100 m-1 mt-3" href="login">Login</a>
        </div>
    </nav>
	
    <div class="container mt-3 d-flex justify-content-center" style=" position: absolute;right: 0px;width: 500px; padding: 10px;">
        <form action="actions/register" method="post" enctype="multipart/form-data">
            <div class="row">
                <div class="col">
                    <div class="card">
                        <?php echo $alert; ?>
                        <div class="card-body">
                            <h1 class="mt-4 text-center">Registrasi</h1><br>
                            <div class="form-group mt-4">
                                <label for="exampleInputEmail1">Nama Lengkap</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="nama" required size="43px">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">E-mail</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" required size="43px">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Username</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="username" required size="43px">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">No.Ktp</label>
                                <input type="text" class="form-control" id="exampleInputPassword1" name="no_ktp" required size="43px">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">No.Tlp</label>
                                <input type="text" class="form-control" id="exampleInputPassword1" name="no_telp" required size="43px">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Masukan password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" name="password" required size="43px">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Masukan Ulang password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" name="confirmpassword" required size="43px">
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary" name="register">SignUp</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>


    <script src="js/jquery.slim.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
</body>

</html>