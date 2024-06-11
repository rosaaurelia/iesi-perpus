<?php
$link = new mysqli("127.0.0.1", "root", "", "perpus");


if(isset($_GET['id'])) {
    $id_buku = $_GET['id'];


    $query_delete = "DELETE FROM dipinjam WHERE buku_id = ?";
    $stmt_delete = $link->prepare($query_delete);
    $stmt_delete->bind_param("i", $id_buku);
    $stmt_delete->execute();

    $query_insert = "INSERT INTO dikembalikan (buku_id, tanggal_pengembalian) VALUES (?, NOW())";
    $stmt_insert = $link->prepare($query_insert);
    $stmt_insert->bind_param("i", $id_buku);
    $stmt_insert->execute();


    echo "Buku telah berhasil dikembalikan.<br><br>";


    echo "<a href='pinjam/pinjam.php?fitur=return'>KEMBALI</a><br>";
    echo "<a href='./index.php'>KEMBALI KE HOMEPAGE</a>";
} else {
    echo "ID buku tidak valid.";
}

$link->close();
?>