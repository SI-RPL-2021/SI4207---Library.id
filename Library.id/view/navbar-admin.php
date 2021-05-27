<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
        <a class="navbar-brand" href="#">Library.id</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            <ul class="navbar-nav">
            <li class="nav-item <?php echo $tambahbuku ?? ""; ?>">
                    <a class="nav-link" href="tambahbuku">Tambah Buku<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item <?php echo $kategori ?? ""; ?>">
                    <a class="nav-link" href="kategori">Hapus Buku</a>
                </li>

            </ul>
        </div>
        <div class="dropdown">
            <button class="btn btn-outline-light dropdown-toggle" style="min-width:200px;" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Hi Admin, <?php echo $admin->username; ?>
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="actions/logout">Log Out</a>
            </div>
        </div>
    </nav>

