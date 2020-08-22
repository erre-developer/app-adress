<?php

    include '../DataBase/database.php';

    $query = "SELECT * FROM region";
    $result = mysqli_query($conecction, $query);
    if (!$result) {
        die('Query Failed' . mysqli_error($conecction));
    }

    $json = array();
    while ($row = mysqli_fetch_array($result))
    {
        $json[] = array(
            'id_region' => $row['id_region'],
            'nombre_region' => $row['nombre_region']
        );
    }

    $jsonstring = json_encode($json);
    echo $jsonstring;

?>