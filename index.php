<?php
session_start();
require 'config.php';
require './models/Auth.php';

$auth = new Auth($pdo,$base);
$userInfo = $auth->checkToken();

echo "Index ";