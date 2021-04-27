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
    public $db,$nama,$username,$email,$no_ktp,$no_telp,$password;

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
        $this->nama = $data["nama"];
        $this->username = $data["username"];
        $this->email = $data["email"];
        $this->no_ktp = $data["no_ktp"];
        $this->no_telp = $data["no_telp"];
        $this->password = $data["password"];
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

}

class Buku
{
    public $db,$judul,$pengarang,$foto,$preview;

    function __construct(DB $db)
    {
        $this->db = $db;
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

    function tambah($kat)
    {
        $stmt = $this->db->query(
            "INSERT INTO buku (judul,pengarang,foto,preview) VALUES (?,?,?,?)",
            "ssss",
            $this->judul,$this->pengarang,$this->foto,$this->preview
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