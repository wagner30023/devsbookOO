<?php

if(!isset($_SESSION)) 
{ 
    session_start(); 
} 

$base = "http://localhost/devs.com.br";

$db_name = 'devsbook'; 
$db_host = 'localhost';
$db_user = 'carlos';
$db_pass = 'kind512r';

try {
    $pdo = new PDO("mysql:dbname=".$db_name.";host=".$db_host,$db_user,$db_pass);
    //$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    return $pdo;
} catch (PDOException $e){
    echo "Error ".$e->getMessage();
}