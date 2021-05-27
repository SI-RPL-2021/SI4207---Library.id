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
        $kat = new Kategori($db);
        $res = $kat->getBukuByKategori($_GET["k"]);
        if ($res->num_rows == 0)
        {
            echo "<p>Tidak ada buku</p>";
        }
        while ($k = $res->fetch_assoc())
        {
            $buku = new Buku($db);
            $buku = $buku->getBukuById($k["id_buku"]);
            echo '
            <div class="col d-flex justify-content-center">
            <div class="card" style="width: 12rem;">
  <img class="card-img-top" src="foto_buku/'.$buku["foto"].'" alt="Card image cap">
  <div class="card-body">
    <a href="preview?id='.$buku["id"].'" class="btn btn-primary w-100">Preview</a>
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