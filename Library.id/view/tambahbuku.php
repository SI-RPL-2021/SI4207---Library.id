<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/app.css" rel="stylesheet">
    <title>Tambah Buku - Library.id</title>
</head>



<body style="background-color: rgb(243, 243, 243);">
    <!-- Navbar -->
    <?php
    $tambahbuku = "active";
    require "view/navbar-admin.php"; 
    ?>
    <br>

    <div class="container">
        <?php
        if (isset($_GET["success"]))
        {
            echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
            Sukses menambah buku
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>';
        }
        ?>
        <form action="actions/tambahbuku" method="post" enctype="multipart/form-data">
            <div class="row">
                <div class="col">
                    <div class="mb-3">
                        <label for="a" class="form-label">Judul Buku</label>
                        <input name="judul" required type="text" class="form-control" id="a">
                    </div>
                    <div class="mb-3">
                        <label for="b" class="form-label">Pengarang</label>
                        <input name="pengarang" required type="text" class="form-control" id="b">
                    </div>
                    <div class="mb-3">
                        <label for="c" class="form-label">Preview</label>
                        <textarea name="preview" required class="form-control" id="c" rows="3"></textarea>
                    </div>
                    <div class="mb-3">
                        <p>Kategori</p>
                        <div class="mt-2">

                            <?php
                            foreach (Kategori::$kategori as $k) {
                                echo '<div class="custom-control custom-checkbox mx-2">
                                <input name="ktgr_' . $k . '" type="checkbox" class="custom-control-input" id="' . $k . '">
                                <label class="custom-control-label" for="' . $k . '">' . ucwords($k) . '</label>
                            </div>';
                            }
                            ?>
                        </div>

                    </div>
                    <div class="mb-3">
                        <button type="submit" class="btn btn-danger">Tambah Buku</button>
                    </div>
                </div>
                <div class="col">
                    <p>Foto</p>
                    <div class="form-group">
                        <label for="exampleFormControlFile1">Upload Foto Sampul</label>
                        <input name="foto" required id="uploadfoto" type="file" class="form-control-file" id="exampleFormControlFile1">
                    </div>
                    <div class="">
                        <img id="foto" class="w-100 bg-primary">
                    </div>
                </div>
            </div>
        </form>
    </div>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>



    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function(e) {
                    $('#foto').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]); // convert to base64 string
            }
        }
        $("#uploadfoto").change(function() {
            readURL(this);
        });
    </script>
</body>

</html>