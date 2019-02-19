<?php

   include("config.php");


   $error = '';
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {

      $sql = "SELECT * FROM people LIMIT 40";
      $result = mysqli_query($db,$sql);

      $rows = array();
      while($r = mysqli_fetch_array($result,MYSQLI_ASSOC)) {
          $rows[] = json_encode($r);
      }
  
      $out = json_encode($rows);
      print_r($out);
   }
   
   mysqli_close($db);
?>