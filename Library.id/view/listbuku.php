<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/app.css" rel="stylesheet">
    <title>List Buku - Library.id</title>
</head>

<body style="background-color: rgb(243, 243, 243);">
   
    <!-- Navbar -->
    <?php
    $listbuku = "active";
    require "view/navbar-admin.php"; 
    ?>
    <br>

    <div class="container">
        <table class="table">
            <thead>
                <tr>
                    <th>Judul</th>
                    <th>Pengarang</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>

                <?php
                $sas = $db->conn->query("SELECT * FROM buku");
                while ($d = $sas->fetch_assoc())
                {
                    ?>
                        <tr>
                            <td><?php echo $d["judul"] ?></td>      
                            <td><?php echo $d["pengarang"] ?></td>
                            <td>
                                <a href="editbuku?id=<?php echo $d["id"] ?>" class="btn btn-warning">Edit</class>
                                <a href="deletebuku?id=<?php echo $d["id"] ?>" class="btn btn-danger">Delete</class>
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