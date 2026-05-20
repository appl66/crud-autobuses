<?php
$host = "sql212.infinityfree.com";
$user = "if0_41888883";
$pass = "OxJsDG5RFvwj";
$db   = "if0_41888883_autobuses_db";

$conexion = new mysqli($host, $user, $pass, $db);

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}
?>
