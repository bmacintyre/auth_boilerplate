<?php

$headers = apache_request_headers();

foreach ($headers as $header => $value) {
   // echo "$header: $value <br />\n";
     if ($header === 'Authorization') {
        echo "recieved on server : $header: $value";
    }
}

?>