<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/app.css" rel="stylesheet">
    <title>Dipinjam - Library.id</title>
</head>

<body style="background-color: rgb(243, 243, 243);">
    <!-- Navbar -->
    <?php
    $dipinjam = "active";
    require "view/navbar-user.php";
    ?>
    <br>

    <div class="shadow container p-3 bg-white">
        <table class="table">
            <thead>
                <th>Judul</th>
                <th>Pengarang</th>
                <th>Tanggal Selesai Peminjaman</th>
                <th>Aksi</th>
            </thead>
            <tbody>
                <?php
                foreach ($dpinjam as $k=>$v)
                {
                    ?>
                    <tr>
                        <td><?php echo $v["judul"] ?></td>
                        <td><?php echo $v["pengarang"] ?></td>
                        <td><?php echo $v["tanggal_selesai_peminjaman"] ?></td>
                        <td>
                        <?php
                            $check = strtotime(date("Y-m-d"));
                            if (strtotime($v["tanggal_peminjaman"]) <= $check)
                            {
                                ?>
                                <a href="baca?id=<?php echo $v["buku_id"] ?>" class="btn btn-danger">Baca Buku</a>
                                <?php
                            }
                            else
                            {
                                ?>
                                Akan bisa dibaca pada <?php echo $v["tanggal_peminjaman"]  ?>
                                <?php
                            }
                        ?>
                        </td>
                    </tr>
                    <?php
                }
                ?>
            </tbody>
        </table>
    </div>

  <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>


</body>
</html>