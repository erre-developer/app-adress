<?php

    require_once('../Config/Config.php');

    $conecction = mysqli_connect(
        DB_HOST,
        DB_USER,
        DB_PASSWORD,
        DB_NAME
    );

?>