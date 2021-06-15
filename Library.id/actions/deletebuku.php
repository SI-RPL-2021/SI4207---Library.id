<?php

$_METHOD = $_GET;


foreach (Kategori::$kategori as $k) {
    $ktgr = new Kategori($db);
    if ($ktgr->cekIfBukuAdaByKategori($k,$_METHOD["id"]))
    {
        $ktgr->deleteBukuFromKategori($k,$_METHOD["id"]);
    }
}

$db->conn->query("DELETE FROM peminjaman WHERE buku_id = ".$_METHOD["id"]);

$buku = new Buku($db);
$get = $buku->getBukuById($_METHOD["id"]);
$buku->id = $get["id"];
$buku->delete();

header("location: listbuku?success=1&id=".$_METHOD["id"]);