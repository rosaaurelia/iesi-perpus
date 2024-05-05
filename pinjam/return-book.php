<?php
function returnBook()
{
    $cookie_name = "cart";
    $cart = json_decode($_COOKIE[$cookie_name], true);

    echo "<h2>Buku yang Akan Dikembalikan</h2>";
    echo "<table border='1'>";
    echo "<tr><th>ID</th><th>Judul Buku</th><th>Aksi</th></tr>";

    foreach ($cart as $index => $item) {
        $idbuku = $item[0];
        $judul = $item[1];
        echo "<tr><td>{$idbuku}</td><td>{$judul}</td><td>";
        echo "<a href='./pinjam.php?fitur=returnbook&idbuku={$idbuku}' onclick='return confirm(\"Apakah Anda yakin ingin mengembalikan buku ini?\")'>Kembalikan</a>";
        echo "</td></tr>";
    }

    echo "</table>";
    echo "<br><a href='../fitur.php'>Pencarian Buku</a> <br>";
    echo "<form method='get' action='../index.php'>";
    echo "<button type='submit'>Kembali ke Homepage</button>";
    echo "</form>";
}

function returnBookById($idbuku)
{
    $cookie_name = "cart";
    $cart = json_decode($_COOKIE[$cookie_name], true);

    // Cari buku dengan idbuku yang sesuai dan hapus dari keranjang
    foreach ($cart as $index => $item) {
        if ($item[0] == $idbuku) {
            array_splice($cart, $index, 1);
            break;
        }
    }

    // Simpan kembali keranjang yang sudah diperbarui
    setcookie($cookie_name, json_encode($cart));

    // Tampilkan kembali tabel buku yang tersisa setelah menghapus
    echo "<h2>Buku yang Akan Dikembalikan</h2>";
    echo "<table border='1'>";
    echo "<tr><th>ID</th><th>Judul Buku</th><th>Aksi</th></tr>";

    foreach ($cart as $item) {
        $idbuku = $item[0];
        $judul = $item[1];
        echo "<tr><td>{$idbuku}</td><td>{$judul}</td><td>";
        echo "<a href='./pinjam.php?fitur=returnbook&idbuku={$idbuku}' onclick='return confirm(\"Apakah Anda yakin ingin mengembalikan buku ini?\")'>Kembalikan</a>";
        echo "</td></tr>";
    }

    echo "</table>";
    echo "<br><a href='../fitur.php'>Pencarian Buku</a> <br>";
    echo "<form method='get' action='../index.php'>";
    echo "<button type='submit'>Kembali ke Homepage</button>";
    echo "</form>";
}
?>
