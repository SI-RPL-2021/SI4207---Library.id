<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/app.css" rel="stylesheet">
    <title>Book of the Month - Library.id</title>
</head>

<body style="background-color: rgb(243, 243, 243);">
    <!-- Navbar -->
    <?php
    $bom = "active";
    require "view/navbar-user.php";
    ?>
    <br>

    <div class="shadow container p-3 bg-white">
        <h1 class="text-center">Book Of The Month</h1>
        <div class="row mt-5">
        <?php
        $res = $db->conn->query("SELECT * FROM buku WHERE MONTH(created_at) = MONTH(CURDATE()) AND YEAR(created_at) = YEAR(CURDATE()) ORDER BY buku.total_peminjam DESC");
        

        $i = 0;
        if ($res)
        {
            $i = 0;
            while ($k = $res->fetch_assoc())
            {
                $aaa = $db->conn->query("SELECT * FROM peminjaman WHERE user_id = ".$user->id." AND buku_id = ".$k["id"]);
                if ($aaa->num_rows == 0)
                {
                    $i++;
                    echo '
                    <div class="col mx-2 d-flex justify-content-center">
                        <div class="card" style="width: 10rem;">
                            <div class="w-100 d-flex justify-content-center">
                                <img class="card-img-top w-100" src="foto_buku/'.$k["foto"].'">
                            </div>
                            <div class="card-body">
                                <a href="preview?id='.$k["id"].'" class="btn btn-outline-dark w-100 mb-3">Preview</a>
                                <a href="pinjam?id='.$k["id"].'" class="btn btn-outline-dark w-100">Pinjam</a>
                            </div>
                        </div>
                    </div>';
                }
            }
        }
        if ($res->num_rows == 0 || $i == 0)
        {
            echo "<p>Tidak ada buku atau buku sedang anda pinjam</p>";
        }

        ?>
        </div>
    </div>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>


</body>
</html>