<?php 
    $host = 'localhost';
    $user = 'root';
    $password = 'admin1234';
    $db_name = 'restaurantdb';

    // set dsn
    $dsn = 'mysql:host='. $host . ';dbname=' . $db_name;

    // create a PDO instance 
    $conn = new PDO($dsn, $user, $password);
?>
