<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/app.css" rel="stylesheet">
    <title>Homepage - Library.id</title>
</head>


<body style="background-color: rgb(243, 243, 243);">
    <!-- Navbar -->
    <?php
    $kategori = "active";
    require "view/navbar-user.php";
    ?>
    <br>

    <div class="container mt-3">
        <div class="row">
        <?php

        foreach (Kategori::$kategori as $k)
        {
            echo '
            <div class="col mx-2 d-flex justify-content-center">
                <div class="" style="width: 10rem;">
                    <div class="w-100 d-flex justify-content-center">
                        <img class="card-img-top" style="width:5rem;" src="img/books-icon.png">
                    </div>
                    <div class="card-body">
                        <a href="kategori?k='.$k.'" class="btn btn-outline-dark w-100">'.ucfirst($k).'</a>
                    </div>
                </div>
            </div>';
        }

        ?>
        </div>

    </div>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>

</html>