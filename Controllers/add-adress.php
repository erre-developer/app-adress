<?php

    require_once '../Helpers/Helpers.php';
    include '../DataBase/database.php';

    if (isset($_POST['direction'])) {
        $direction = strClean($_POST['direction']);
        $number = strClean($_POST['number']);
        $depto = strClean($_POST['depto']);
        $comunas = strClean($_POST['comunas']);

        $query = "INSERT INTO direccion (nombre_calle, numero, depto, id_comuna_fk) VALUES ('$direction', '$number', '$depto', '$comunas')";
        $result = mysqli_query($conecction,$query);
        if (!$result) {
            die('Query Failes.');
        }
        echo 'tarea agregada satisfactoriamente';
    }

?>
