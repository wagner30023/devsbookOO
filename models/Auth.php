<?php
require './config.php';
require_once './dao/UserDaoMysql.php';

class Auth {
    private $pdo;
    private $base;

    public function __construct(PDO $pdo,$base) {
        $this->pdo = $pdo;
        $this->base = $base;
    }

    public function checkToken(){
        if(!empty($_SESSION['token'])){
            $token = $_SESSION['token'];
            $userDao = new UserDaoMysql($this->pdo);
            $user = $userDao->findByToken($token);
            if($user){
                return $user;
            }
        }
        header("Location: ".$this->base."/login.php");
        exit;
    }    

    public function validateLogin($email, $password){
        $userDao = new UserDaoMysql($this->pdo);
      
        $user = $userDao->findByEmail($email,$password);
        if($user){
            
            if(password_verify($password,$user->password)){
                 
                $token = md5(time().rand(0, 9999));

                $_SESSION['token'] = $token;
                $user->token = $token;
                
                $userDao->update($user);

                return true;
            }
        }
        return false;
    }

    public function emailExists($email,$password){
        $userDao = new UserDaoMysql($this->pdo);
        return $userDao->findByEmail($email,$password) ? true : false;
    }

    public function RegisterUser($name,$email,$password,$birthdate){
        $userDao = new UserDaoMysql($this->pdo);
        
        $hash = password_hash($password,PASSWORD_DEFAULT);
        $token = md5(time().rand(0, 9999));

        $newUser = new User();
        $newUser->name = $name;
        $newUser->email = $email;
        $newUser->password = $hash;
        $newUser->birthdate = $birthdate;
        $newUser->token = $token;
        
        $userDao->insert($newUser);

        $_SESSION['token'] = $token;
    }

}