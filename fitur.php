<html>
    <body>
<?php
include "cari.php";
$fitur = $_GET['fitur'] ?? null;
switch ($fitur) {
    case 'pinjam':
        header('location:pinjam/pinjam.php?fitur=read');
        exit;
    case 'kembalikan': // Handle Kembalikan Buku
        header('location:pinjam/pinjam.php?fitur=return');
        break;
    case 'cari':
    default:
        $keyword = $_GET['keyword'] ?? null;
        $cart = json_decode($_COOKIE['cart'] ?? "[]", true);
        $listbuku = cari($keyword, $cart);
        display($listbuku);
        break;

}
?>
    </body>
</html>