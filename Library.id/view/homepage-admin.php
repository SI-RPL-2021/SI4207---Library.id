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
    <?php require "view/navbar-admin.php"; ?>
    <br>

    <!-- Carousel -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="img/undraw_book_lover_mkck.svg" height="400px" alt="First slide">
                <div class="carousel-caption d-none d-md-block">
                    <h2 class="text-outline font-weight-bold">Pergi</h2>
                    <h5 class="text-outline ">Pencipta : Tere Liye</h5>
                    <h5 class="text-outline ">Kategori : Sci-Fi</h5>
                    <h5 class="text-outline ">Tahun : 2077</h5>
                    <h6 class="text-primary font-weight-bold text-outline">Baca selengkapnya</h6>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/undraw_Books_l33t.svg" height="400px" alt="Second slide">
                <div class="carousel-caption d-none d-md-block">
                    <h2 class="text-outline font-weight-bold">Pergi</h2>
                    <h5 class="text-outline ">Pencipta : Tere Liye</h5>
                    <h5 class="text-outline ">Kategori : Sci-Fi</h5>
                    <h5 class="text-outline ">Tahun : 2077</h5>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/undraw_Bookshelves_re_lxoy.svg" height="400px" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                    <h2 class="text-outline font-weight-bold">Pergi</h2>
                    <h5 class="text-outline ">Pencipta : Tere Liye</h5>
                    <h5 class="text-outline ">Kategori : Sci-Fi</h5>
                    <h5 class="text-outline ">Tahun : 2077</h5>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>


    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>

</html>