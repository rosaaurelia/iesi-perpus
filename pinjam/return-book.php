<?php
function returnBook()
{
    $link = new mysqli("127.0.0.1", "root", "", "perpus");

    $queri_pinjam = "SELECT buku.id, buku.judul FROM peminjaman
                    JOIN dipinjam ON peminjaman.id = dipinjam.peminjaman_id
                    JOIN buku ON dipinjam.buku_id = buku.id";

    $stmt = $link->prepare($queri_pinjam);
    $stmt->execute();
    $result = $stmt->get_result();
    $data = $result->fetch_all(MYSQLI_ASSOC);

    if (!empty($data)){
        echo "<table border='1'>";
        echo "<tr><td>No</td><td>ID Buku</td><td>Judul Buku</td><td>Tanggal Peminjaman</td></td></tr>";
        $i = 1;
        foreach ($data as $row) {
            echo "<tr>";
            echo "<td>$i</td><td>{$row['id']}</td><td>{$row['judul']}</td><td><a href='../return.php?id={$row['id']}'>Kembalikan</a></td></tr>";
            $i++;
        }
        echo "</table>  <br>";
    } else {
        echo "Tidak ada buku yang sedang dipinjam<br><br>";
    }
    

    echo "<a href='../fitur.php'>CARI</a> <br>";
    echo "<a href='../fitur.php'>KEMBALI</a><br>";
    echo "<button type='submit'>Kembali ke Homepage</button>";
}
?>