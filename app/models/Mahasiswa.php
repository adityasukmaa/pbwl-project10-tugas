<?php

namespace App\Models;

use App\Core\Model;

class Mahasiswa extends Model
{

    public function show()
    {
        $query = "SELECT * FROM tb_mahasiswa";
        $stmt = $this->db->prepare($query);
        $stmt->execute();

        return $this->selects($stmt);
    }

    public function save()
    {
        $nim = $_POST['mahasiswa_nim'];
        $nama = $_POST['mahasiswa_nama'];
        $kelas = $_POST['mahasiswa_kelas'];
        $prodi = $_POST['mahasiswa_prodi'];

        $sql = "INSERT INTO tb_mahasiswa
            SET mahasiswa_nim=:mahasiswa_nim, mahasiswa_nama=:mahasiswa_nama, mahasiswa_kelas=:mahasiswa_kelas, mahasiswa_prodi=:mahasiswa_prodi";
        $stmt = $this->db->prepare($sql);

        $stmt->bindParam(":mahasiswa_nim", $nim);
        $stmt->bindParam(":mahasiswa_nama", $nama);
        $stmt->bindParam(":mahasiswa_kelas", $kelas);
        $stmt->bindParam(":mahasiswa_prodi", $prodi);

        $stmt->execute();
    }

    public function edit($id)
    {
        $query = "SELECT * FROM tb_mahasiswa WHERE mahasiswa_id=:mahasiswa_id";
        $stmt = $this->db->prepare($query);

        $stmt->bindParam(":mahasiswa_id", $id);
        $stmt->execute();

        return $this->select($stmt);
    }

    public function update()
    {
        $nim = $_POST['nim'];
        $nama = $_POST['nama'];
        $kelas = $_POST['kelas'];
        $prodi = $_POST['prodi'];
        $id = $_POST['mahasiswa_id'];

        $sql = "UPDATE tb_mahasiswa
                  SET mahasiswa_nim=:mahasiswa_nim, mahasiswa_nama=:mahasiswa_nama, mahasiswa_kelas=:mahasiswa_kelas, mahasiswa_prodi=:mahasiswa_prodi
                  WHERE mahasiswa_id=:mahasiswa_id";

        $stmt = $this->db->prepare($sql);

        $stmt->bindParam(":mahasiswa_nim", $nim);
        $stmt->bindParam(":mahasiswa_nama", $nama);
        $stmt->bindParam(":mahasiswa_kelas", $kelas);
        $stmt->bindParam(":mahasiswa_prodi", $prodi);
        $stmt->bindParam(":mahasiswa_id", $id);

        $stmt->execute();
    }

    public function delete($id)
    {
        $sql = "DELETE FROM tb_mahasiswa WHERE mahasiswa_id=:mahasiswa_id";
        $stmt = $this->db->prepare($sql);

        $stmt->bindParam(":mahasiswa_id", $id);
        $stmt->execute();
    }
}
