<?php

class DB {
    public $conn;

    function __construct($servername,$username,$password,$dbname)
    {
        $this->conn = new mysqli($servername,$username,$password,$dbname);
        if ($this->conn->connect_error) {
          die("Connection failed: " . $this->conn->connect_error);
        }
    }

    function getConn()
    {
        return $this->conn;
    }

    function query($query,$type,...$params)
    {
        $stmt = $this->conn->prepare($query);
        $stmt->bind_param($type, ...$params);
        return $stmt;
    }
}

class RegisterUser
{
    public $nama,$username,$password,$no_ktp,$no_telp,$email,$db;

    function __construct(DB $db)
    {
        $this->db = $db;
    }

    function register()
    {

        $check = $this->db->query(
            "SELECT * FROM user WHERE email = ?",
            "s",
            $this->email
        );
        $check->execute();
        $res = $check->get_result();
        if ($res->num_rows > 0)
        {
            header("location:../registrasi?err=2");
            exit;
        }

        $stmt = $this->db->query(
            "INSERT INTO user (nama,email,username,no_ktp,no_telp,password) values (?,?,?,?,?,?)",
            "ssssss",
            $this->nama,
            $this->email,
            $this->username,
            $this->no_ktp,
            $this->no_telp,
            $this->password
        );

        $stmt->execute();

        $stmt = $this->db->query(
            "SELECT * FROM user WHERE username = ?",
            "s",
            $this->username
        );

        $stmt->execute();
        $res = $stmt->get_result();
        $data = $res->fetch_assoc();
        return $data;
    }
}

class User
{
    public $db,$id,$nama,$username,$email,$no_ktp,$no_telp,$password;

    function __construct(DB $db,$id)
    {
        $this->db = $db;
        $stmt = $this->db->query(
            "SELECT * FROM user WHERE id = ?;",
            "i",
            intval($id)
        );

        $stmt->execute();
        $res = $stmt->get_result();
        $data = $res->fetch_assoc();
        $this->id = $data["id"];
        $this->nama = $data["nama"];
        $this->username = $data["username"];
        $this->email = $data["email"];
        $this->no_ktp = $data["no_ktp"];
        $this->no_telp = $data["no_telp"];
        $this->password = $data["password"];
    }

    function edit()
    {
        $stmt = $this->db->query(
            "UPDATE user SET nama=?,no_telp=?,email=?,password=? WHERE id = ?",
            "ssssi",
            $this->nama,$this->no_telp,$this->email,$this->password,$this->id
        );

        $stmt->execute();
    }
}

class Admin
{
    public $db,$username,$password;

    function __construct(DB $db,$id)
    {
        $this->db = $db;
        $stmt = $this->db->query(
            "SELECT * FROM admin WHERE id = ?;",
            "i",
            intval($id)
        );

        $stmt->execute();
        $res = $stmt->get_result();
        $data = $res->fetch_assoc();
        $this->username = $data["username"];
        $this->password = $data["password"];
    }
}

class LoginUser
{
    public $db,$email,$password;

    function __construct(DB $db)
    {
        $this->db = $db;
    }

    function login()
    {
        $stmt = $this->db->query(
            "SELECT * FROM user WHERE email = ? AND password = ?;",
            "ss",
            $this->email,
            $this->password
        );
        $stmt->execute();
        $res = $stmt->get_result();
        $data = $res->fetch_assoc();
        return $data;
    }
}

class LoginAdmin
{
    public $db,$username,$password;

    function __construct(DB $db)
    {
        $this->db = $db;
    }

    function login()
    {
        $stmt = $this->db->query(
            "SELECT * FROM admin WHERE username = ? AND password = ?;",
            "ss",
            $this->username,
            $this->password
        );
        $stmt->execute();
        $res = $stmt->get_result();
        $data = $res->fetch_assoc();
        return $data;
    }
}

// Tambah Kategori
class Kategori
{
    public static $kategori = ["fiksi","filsafat","religi","sains","komputer","antropologi","sejarah","musik","bisnis","biografi"];
    public $db,$username,$password;

    function __construct(DB $db)
    {
        $this->db = $db;
    }

    public function getBukuByKategori($kat)
    {
        $res = $this->db->conn->query(
            "SELECT * FROM ktgr_$kat"
        );

        return $res;
    }

    public function deleteBukuFromKategori($kat,$id)
    {
        $stmt = $this->db->query(
            "DELETE FROM ktgr_$kat WHERE id_buku = ?",
            "i",
            $id
        );
        $stmt->execute();
    }

    public function cekIfBukuAdaByKategori($kat,$id_buku)
    {
        $res = $this->db->conn->query(
            "SELECT * FROM ktgr_$kat WHERE id_buku = ".$id_buku
        );

        return $res->fetch_assoc();
    }

}

class Buku
{
    public $db,$id,$judul,$pengarang,$foto,$preview,$buku,$total_peminjam;

    function __construct(DB $db)
    {
        $this->db = $db;
    }

    function delete()
    {
        $stmt = $this->db->query(
            "DELETE FROM buku WHERE id = ?",
            "i",
            $this->id
        );
        $stmt->execute();
    }

    function getBukuById($id)
    {
        $stmt = $this->db->query(
            "SELECT * FROM buku WHERE id = ?",
            "i",
            $id
        );
        $stmt->execute();
        $res = $stmt->get_result();
        return $res->fetch_assoc();
    }

    function uploadFoto($foto)
    {
        $foto_name = strval(rand(1,999999)).$foto["name"];
        move_uploaded_file($foto["tmp_name"],"../foto_buku/".$foto_name);
        $this->foto = $foto_name;
    }

    function uploadBuku($buku)
    {
        $buku_name = strval(rand(1,999999)).$buku["name"].".libraryid";
        move_uploaded_file($buku["tmp_name"],"../file_buku/".$buku_name);
        $this->buku = $buku_name;
    }

    function edit()
    {
        $stmt = $this->db->query(
            "UPDATE buku SET judul=?,total_peminjam=?,pengarang=?,foto=?,preview=?,buku=? WHERE id = ?",
            "sissssi",
            $this->judul,$this->total_peminjam,$this->pengarang,$this->foto,$this->preview,$this->buku,$this->id
        );
        $stmt->execute();
    }

    function tambah($kat)
    {
        $stmt = $this->db->query(
            "INSERT INTO buku (judul,pengarang,foto,preview,buku) VALUES (?,?,?,?,?)",
            "sssss",
            $this->judul,$this->pengarang,$this->foto,$this->preview,$this->buku
        );
        $stmt->execute();
        $insertid = $stmt->insert_id;

        foreach (Kategori::$kategori as $k)
        {
            if (isset($_POST["ktgr_".$k]))
            {
                $stmt = $this->db->query(
                    "INSERT INTO ktgr_$k (id_buku) VALUES (?) ",
                    "i",
                    $insertid
                );
                $stmt->execute();
            }
        }

        
    }
}

class Peminjaman {
    public $db,$id,$user_id,$buku_id,$tanggal_peminjaman,$tanggal_selesai_peminjaman;

    function __construct(DB $db)
    {
        $this->db = $db;
    }

    function tambah()
    {
        $stmt = $this->db->query(
            "INSERT INTO peminjaman (user_id,buku_id,tanggal_peminjaman,tanggal_selesai_peminjaman) VALUES (?,?,?,?)",
            "iiss",
            $this->user_id,$this->buku_id,$this->tanggal_peminjaman,$this->tanggal_selesai_peminjaman
        );
        $stmt->execute();
        $insertid = $stmt->insert_id;
    }

    function getBukuDiPinjam($user_id)
    {
        $res = $this->db->conn->query(
            "SELECT buku.id as buku_id, buku.judul, peminjaman.tanggal_selesai_peminjaman, peminjaman.tanggal_peminjaman, peminjaman.id as peminjaman_id, buku.pengarang FROM peminjaman INNER JOIN buku ON buku.id = peminjaman.buku_id WHERE peminjaman.user_id = ".$user_id
        );

        $has = [];

        while ($d = $res->fetch_assoc())
        {
            array_push($has,$d);
        }

        return $has;
    }

    function deleteIf3HariSudahBerlalu()
    {
        $check = strtotime(date("Y-m-d"));
        $p = $this->db->conn->query("SELECT * FROM peminjaman");
        foreach ($p as $k=>$v)
        {
            $start = strtotime($v["tanggal_peminjaman"]);
            $end = strtotime($v["tanggal_selesai_peminjaman"]);
            $passed = (($check <= $end));
            if (!$passed)
            {
                $this->db->conn->query("DELETE FROM peminjaman WHERE id = ".$v["id"]);
            }
        }
    }
}