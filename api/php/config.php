<?php



   // define('DB_SERVER', 'localhost:3306');
   // define('DB_USERNAME', 'root');
   // define('DB_PASSWORD', '');
   // define('DB_DATABASE', 'py_api');

   define('DB_SERVER', '127.0.0.1:3306');
   define('DB_USERNAME', 'admin');
   define('DB_PASSWORD', 'Sliteleemadd7!@#$');
   define('DB_DATABASE', 'boilerplate');

   $db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
   // if($db)
   // {
   //     echo "OK";
   // }
   // else
   // {
   //     echo "Error";
   // }

   define('CLIENT_AUTHORITY', 'brucemacintyre.com');
   define('CLIENT_ID', '4a2fa3b4-c160-4436-82d3-148f602c9aa8');
   define('CLIENT_SECRET', '5SquUVG0Tpg57ywoxUbPPgjtK0OkX1ttipVlfBRRrpo');

?>