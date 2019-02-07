<?php

   include("config.php");
   include('./vendor/firebase/php-jwt/src/JWT.php');

   // Install instructions here https://github.com/firebase/php-jwt
   use \Firebase\JWT\JWT;

   // required headers
   header("Content-Type: application/json; charset=UTF-8");
   header("Access-Control-Allow-Methods: POST");
   header("Access-Control-Max-Age: 3600");
   header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
   header("Access-Control-Allow-Origin: *");
   //var_dump($_POST);

   session_start();
   $error = '';
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      // var_dump($_POST);
      if ( isset( $_POST['username'] ) && isset( $_POST['password'] ) ) {
         $myusername = mysqli_real_escape_string($db,$_POST['username']);
         $mypassword = mysqli_real_escape_string($db,$_POST['password']); 
      } else {
         return;
      }
      
      $key = "example_key";
      $token = array(
         'aud' => 'brucemacityre.com',
         'iss' => CLIENT_ID,
         'sub' => $myusername,
         'nbf' => time()
      );

      $sql = "SELECT id FROM auth WHERE username = '$myusername' and passcode = '$mypassword'";
      $result = mysqli_query($db,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
     // $active = $row['active'];
      
      $count = mysqli_num_rows($result);
      
      // If result matched $myusername and $mypassword, table row must be 1 row

      if($count == 1) {

         $_SESSION['login_user'] = $myusername;

         // Generate a token
         $_SESSION['token'] = JWT::encode($token, $key);;

         echo $_SESSION['token'];
      } else {
         $error = "Your Login Name or Password is invalid";
         echo $error;
      }
   }
?>