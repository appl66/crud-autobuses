<?php
include("config.php");

if ($_POST) {
    $id_bus = $_POST['id_bus'];
    $numero_linea = $_POST['numero_linea'];
    $obs = $_POST['observaciones'];

    $sql = "INSERT INTO bus_linea (id_bus, numero_linea, observaciones)
            VALUES ('$id_bus', '$numero_linea', '$obs')";

    $conexion->query($sql);

    header("Location: index.php");
}
?>

<h2>Añadir asignación Bus - Línea</h2>

<form method="POST">
    Bus (ID): <input type="number" name="id_bus" required><br><br>
    Número de línea: <input type="number" name="numero_linea" required><br><br>
    Observaciones: <input type="text" name="observaciones"><br><br>

    <button type="submit">Guardar</button>
</form>
