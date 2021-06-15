<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/app.css" rel="stylesheet">
    <title>Preview - Library.id</title>
</head>

<body style="background-color: rgb(243, 243, 243);">
    <!-- Navbar -->
    <?php
    $kategori = "active";
    require "view/navbar-user.php";
    ?>
    <br>
	<div class="container d-flex">
		<div class="col mt-3 bg-white p-3 shadow rounded mb-3 mr-3">
			<p>PREVIEW BUKU</p>
			<div class="d-flex justify-content-center flex-row">
			<img class="shadow rounded mb-3" width="200px" src="foto_buku/<?php echo $book["foto"]; ?>">
			
			</div>
            <?php
            $aaa = $db->conn->query("SELECT * FROM peminjaman WHERE user_id = ".$user->id." AND buku_id = ".$book["id"]);
            if ($aaa->num_rows == 0)
            {
                ?>
                <a href="pinjam?id=<?php echo $book["id"] ?>" class="btn btn-primary">Pinjam Buku</a>
                <?php
            }
            ?>
			<h1><?php echo $book["judul"]; ?></h1>
			<h5 class="text-muted"><?php echo $book["pengarang"]; ?></h5>
			<div style="white-space:pre-wrap;"><?php echo $book["preview"]; ?></div>
		</div>
		<div class="col mt-3 bg-white p-3 shadow rounded mb-3" style="max-width:15rem;max-height:25rem;">
			<p>BACA JUGA</p>
            <div class="bordered">
                <?php
                while ($d = $res->fetch_assoc())
                {
                    echo '
                    <div class="border p-3">
                    <p class="font-weight-bold">'.$d["judul"].'</p>
                    <img class="mb-3" src="foto_buku/'.$d["foto"].'" width="100%">
                    <a href="preview?id='.$d["id"].'" class="btn btn-primary w-100">Baca</a>
                    </div>
                    ';
                }  
                ?>
            </div>
		</div>
	</div>
   

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>

</html>