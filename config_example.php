<?php
// config.example.php
// Copy file ini menjadi 'config.php' dan sesuaikan dengan database Anda

$host = 'localhost';
$user = 'your_username';  // Ganti dengan username database Anda
$pass = 'your_password';  // Ganti dengan password database Anda
$db = 'spfc_jantung';

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>