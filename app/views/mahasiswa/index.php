<h2>Mahasiswa</h2>

<a href="<?php echo URL; ?>/mahasiswa/input" class="btn">Input Mahasiswa</a>

<table>
      <tr>
            <th>NO</th>
            <th>NIM</th>
            <th>NAMA</th>
            <th>KELAS</th>
            <th>PRODI</th>
            <th>EDIT</th>
            <th>DELETE</th>
      </tr>

      <?php $no = 1;
      foreach ($data['rows'] as $row) { ?>
            <tr>
                  <td><?php echo $no; ?></td>
                  <td><?php echo $row['mahasiswa_nim']; ?></td>
                  <td><?php echo $row['mahasiswa_nama']; ?></td>
                  <td><?php echo $row['mahasiswa_kelas']; ?></td>
                  <td><?php echo $row['mahasiswa_prodi']; ?></td>
                  <td><a href="<?php echo URL; ?>/mahasiswa/edit/<?php echo $row['mahasiswa_id']; ?>" class="btn">Edit</a></td>
                  <td><a href="<?php echo URL; ?>/mahasiswa/delete/<?php echo $row['mahasiswa_id']; ?>" class="btn" onclick="return confirm('Are you sure?')">Delete</a></td>
            </tr>
      <?php $no++;
      } ?>

</table>