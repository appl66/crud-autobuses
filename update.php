<?php
include("config.php");

$id = $_GET['id'];

$sql = "SELECT * FROM bus_linea WHERE id=$id";
$res = $conexion->query($sql);
$data = $res->fetch_assoc();

if ($_POST) {
    $id_bus = $_POST['id_bus'];
    $numero_linea = $_POST['numero_linea'];
    $obs = $_POST['observaciones'];

    $sql = "UPDATE bus_linea 
            SET id_bus='$id_bus', numero_linea='$numero_linea', observaciones='$obs'
            WHERE id=$id";

    $conexion->query($sql);

    header("Location: index.php");
}
?>

<h2>Editar asignación</h2>

<form method="POST">
    Bus (ID): <input type="number" name="id_bus" value="<?= $data['id_bus'] ?>" required><br><br>
    Número de línea: <input type="number" name="numero_linea" value="<?= $data['numero_linea'] ?>" required><br><br>
    Observaciones: <input type="text" name="observaciones" value="<?= $data['observaciones'] ?>"><br><br>

    <button type="submit">Actualizar</button>
</form>

