<?php

    require_once '../Helpers/Helpers.php';
    include '../DataBase/database.php';

    if(isset($_POST['id'])) {

        $id = $_POST['id'];
        $query = "DELETE FROM direccion WHERE id_direccion = $id";

        $result = mysqli_query($conecction, $query);
        if(!$result) {
            die('Query Failed.');
        }
        echo "Adress Delete Successfully";
    }

?>