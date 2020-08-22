<?php

    include '../DataBase/database.php';

    if(isset($_POST['id'])) {

        $id = $_POST['id'];
        $query = "CALL getAdressEdit($id)";

        $result = mysqli_query($conecction, $query);
        if(!$result) {
            die('Query Failed.');
        }
        
        $json = array();
        while ($row = mysqli_fetch_array($result)) {
            $json[] = array(
                'id_direccion' => $row['id_direccion'],
                'nombre_calle' => $row['nombre_calle'],
                'numero' => $row['numero'],
                'depto' => $row['depto'],
                'id_comuna' => $row['id_comuna'],
                'id_region' => $row['id_region']
            );
        }

        $jsonstring = json_encode($json[0]);
        echo $jsonstring;
    }
    


?>