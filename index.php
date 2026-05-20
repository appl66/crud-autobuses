<?php
include("config.php");

$sql = "SELECT 
            bus_linea.id,
            bus.`código` AS id_bus,
            bus.`modelo`,
            `líneas`.`número de linea` AS numero_linea,
            `líneas`.`tipo de linea`,
            bus_linea.observaciones
        FROM bus_linea
        JOIN bus ON bus.`código` = bus_linea.id_bus
        JOIN `líneas` ON `líneas`.`número de linea` = bus_linea.numero_linea";

$resultado = $conexion->query($sql);
?>

<h2>Asignación Bus - Línea</h2>
<a href="add.php">Añadir asignación</a>
<table border="1" cellpadding="10">
<tr>
    <th>ID</th>
    <th>Bus</th>
    <th>Modelo</th>
    <th>Línea</th>
    <th>Tipo</th>
    <th>Observaciones</th>
    <th>Acciones</th>
</tr>

<?php while($fila = $resultado->fetch_assoc()) { ?>
<tr>
    <td><?= $fila['id'] ?></td>
    <td><?= $fila['id_bus'] ?></td>
    <td><?= $fila['modelo'] ?></td>
    <td><?= $fila['numero_linea'] ?></td>
    <td><?= $fila['tipo de linea'] ?></td>
    <td><?= $fila['observaciones'] ?></td>
    <td>
        <a href="update.php?id=<?= $fila['id'] ?>">Editar</a> |
        <a href="delete.php?id=<?= $fila['id'] ?>">Eliminar</a>
    </td>
</tr>
<?php } ?>
</table>

