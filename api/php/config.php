<?php

   define('DB_SERVER', 'localhost:3306');
   define('DB_USERNAME', 'root');
   define('DB_PASSWORD', 'yourpass');
   define('DB_DATABASE', 'py_api');
   $db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
  
   define('CLIENT_AUTHORITY', 'brucemacintyre.com');
   define('CLIENT_ID', '4a2fa3b4-c160-4436-82d3-148f602c9aa8');
   define('CLIENT_SECRET', '5SquUVG0Tpg57ywoxUbPPgjtK0OkX1ttipVlfBRRrpo');

?>