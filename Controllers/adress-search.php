<?php

    require_once '../Helpers/Helpers.php';
    include '../DataBase/database.php';

    $search = $_POST['search'];

    if (!empty($search)) {
        $query = "CALL getAllSearch('$search')";
        $result = mysqli_query($conecction, $query);
        if (!$result) {
            die('Error de consulta' . mysqli_error($connection));
        }
        $json = array();

        while($row = mysqli_fetch_array($result)){
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
    }

?>