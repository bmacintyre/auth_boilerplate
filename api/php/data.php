<?php
   include("config.php");
   
   $error = '';
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      
      $sql = "SELECT * FROM mobile_data ORDER BY value ASC LIMIT 22";
      $result = mysqli_query($db,$sql);

      $rows = array();
      while($r = mysqli_fetch_array($result,MYSQLI_ASSOC)) {
          $rows[] = $r;
      }
      print json_encode($rows);
   }
?>