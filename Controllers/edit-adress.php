<?php

    require_once '../Helpers/Helpers.php';
    include '../DataBase/database.php';

    $direction = strClean($_POST['direction']);
    $number = strClean($_POST['number']);
    $depto = strClean($_POST['depto']);
    $comunas = strClean($_POST['comunas']);
    $id = $_POST['id'];

    $query = "UPDATE direccion SET nombre_calle = '$direction', numero = '$number', depto = '$depto', id_comuna_fk = '$comunas' WHERE id_direccion = '$id'";

    $result = mysqli_query($conecction, $query);
    if (!$result) {
        die('Query Filed.');
    }

?>