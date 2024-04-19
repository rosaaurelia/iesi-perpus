<!DOCTYPE html>
<html>
<head>
    <title>Perpustakaan</title>
</head>
<body>
    <?php include "koneksi.php"; ?>
    <h1>Selamat Datang di Perpustakaan</h1>

    <h2>Pilih Fitur:</h2>
    <ul>
        <li><a href="fitur.php?fitur=cari">Pencarian buku</a></li>
        <li><a href="fitur.php?fitur=pinjam">Keranjang Peminjaman Buku</a></li>
        <!-- <li><a href="fitur.php?fitur=pinjam">Buku yang sedang dipinjam</a></li> -->
        <li><a href="fitur.php?fitur=kembalikan">Kembalikan Buku</a></li>
    </ul>
</body>
</html>