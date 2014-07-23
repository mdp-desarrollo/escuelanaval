<?php
session_start();
if (isset($_COOKIE[session_name()])) {
    setcookie(session_name(), '', 0, '../escuelanaval/');
}
@session_destroy();
header('Location: ../escuelanaval');
?>