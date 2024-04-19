<?php 

function reset_cart()
{
    $cookie_name = "cart";
    setcookie($cookie_name, "", time() - 3600); // Set waktu kadaluarsa cookie ke masa lalu untuk menghapusnya
}

