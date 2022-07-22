<?php
require("js.php");
function connexpdo($db)
{
    $sgbd = "l2mpcie_ct_21_2_pays.sql"; // choix de MySQL
    $host = "localhost";
    $charset = "UTF8";
    $user = "root"; // TODO : user id
    $pass = "CyvZgO"; // TODO : password
    try {
        $pdo = new PDO("$sgbd:host=$host;dbname=$db;charset=$charset", $user, $pass);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $pdo;
    } catch (PDOException $e) {
        displayException($e);
        exit();
    }
}
?>
