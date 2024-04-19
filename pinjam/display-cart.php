<?php
function display()
{
    
    $cookie_name = "cart";
    $cart = json_decode($_COOKIE[$cookie_name], true); // Ambil kembali isi keranjang setelah disimpan
    echo "<h2>Buku yang Sedang Dipinjam</h2>";
    echo "<table border='1'>";
    echo "<tr><th>ID</th><th>Judul Buku</th></tr>";
    foreach ($cart as $item) {
        echo "<tr><td>{$item[0]}</td><td>{$item[1]}</td></tr>";
    }
    echo "</table>";
    echo "<br><a href='../fitur.php'>Pencarian Buku</a> <br>";
    echo "<form method='get' action='../index.php'>";
    echo "<button type='submit'>Kembali ke Homepage</button>";
    echo "</form>";
}
?>
