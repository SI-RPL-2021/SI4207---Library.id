<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
        <a class="navbar-brand" href="#">Library.id</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item <?php echo $home ?? ""; ?>">
                    <a class="nav-link" href="homepage">Home<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item <?php echo $bom ?? ""; ?>">
                    <a class="nav-link" href="bookmonth">Book of the Month</a>
                </li>
                <li class="nav-item <?php echo $kategori ?? ""; ?>">
                    <a class="nav-link" href="kategori">Kategori</a>
                </li>
                <li class="nav-item <?php echo $dipinjam ?? ""; ?>">
                    <a class="nav-link" href="dipinjam">Dipinjam</a>
                </li>
                <li class="nav-item <?php echo $profil ?? ""; ?>">
                    <a class="nav-link" href="profil">Profil</a>
                </li>
            </ul>
        </div>
        <div class="dropdown">
            <button class="btn btn-outline-light dropdown-toggle" style="min-width:150px;" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Hi, <?php echo $user->nama; ?>
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="profil">Profil</a>
                <a class="dropdown-item" href="actions/logout">Log Out</a>
            </div>
        </div>
    </nav>