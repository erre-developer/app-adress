<?php

include '../DataBase/database.php';

    $id = $_POST['id'];

    $query = "SELECT * FROM comuna WHERE id_region_fk = $id ORDER BY nombre_comuna ASC";
    $result = mysqli_query($conecction, $query);
    if (!$result) {
        die('Query Failed' . mysqli_error($conecction));
    }

    $json = array();
    while ($row = mysqli_fetch_array($result))
    {
        $json[] = array(
            'id_comuna' => $row['id_comuna'],
            'nombre_comuna' => $row['nombre_comuna']
        );
    }

    $jsonstring = json_encode($json);
    echo $jsonstring;
?>