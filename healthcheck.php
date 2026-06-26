<?php
// Railway healthcheck endpoint - returns 200 OK
http_response_code(200);
header('Content-Type: text/plain');
echo 'OK';
exit;
