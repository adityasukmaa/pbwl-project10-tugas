<h2>Edit Mahasiswa</h2>

<form action="<?php echo URL; ?>/mahasiswa/update" method="post">
    <input type="hidden" name="mahasiswa_id" value="<?php echo $data['row']['mahasiswa_id']; ?>">        
    <table>
        <tr>
            <td>NIM</td>
            <td><input type="text" name="nim" value="<?php echo $data['row']['mahasiswa_nim']; ?>" required></td>
        </tr>
        <tr>
            <td>NAMA</td>
            <td><input type="text" name="nama" value="<?php echo $data['row']['mahasiswa_nama']; ?>" required></td>
        </tr>
        <tr>
            <td>KELAS</td>
            <td><input type="text" name="kelas" value="<?php echo $data['row']['mahasiswa_kelas']; ?>" required></td>
        </tr>
        <tr>
            <td>PRODI</td>
            <td><input type="text" name="prodi" value="<?php echo $data['row']['mahasiswa_prodi']; ?>" required></td>
        </tr>
        
        <tr>
            <td></td>
            <td><input type="submit" name="btn_update" value="UPDATE"></td>
        </tr>
    </table>
</form>