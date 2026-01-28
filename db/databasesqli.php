<?php 
    session_start();
    $db_server = "localhost";
    $db_user = "root";
    $db_pass = "";
    $db_name = "restaurantdb";

    try{
        $con = mysqli_connect($db_server, $db_user, 
                                $db_pass, $db_name);
    }catch(mysqli_sql_exception) {
        $_SESSION["db_error"] = "There is a problem connecting to the server now!";
    }


?>