<?php
include("config.php");

$id = $_GET['id'];

$sql = "DELETE FROM bus_linea WHERE id=$id";
$conexion->query($sql);

header("Location: index.php");
?>