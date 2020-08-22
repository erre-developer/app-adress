<?php

    include '../DataBase/database.php';

    $query = "SELECT * FROM fetch_direcciones";
    $result = mysqli_query($conecction, $query);
    if (!$result) {
        die('Query Failed' . mysqli_error($conecction));
    }

    $json = array();
    while ($row = mysqli_fetch_array($result))
    {
        $json[] = array(
            'id_direccion' => $row['id_direccion'],
            'nombre_calle' => $row['nombre_calle'],
            'numero' => $row['numero'],
            'depto' => $row['depto'],
            'nombre_comuna' => $row['nombre_comuna'],
            'nombre_region' => $row['nombre_region']
        );
    }

    $jsonstring = json_encode($json);
    echo $jsonstring;

?>