<?php
$servername = "localhost"; // o la dirección de tu servidor MySQL
$username = "root"; // tu nombre de usuario de MySQL
$password = ""; // tu contraseña de MySQL
$dbname = "examen"; // el nombre de tu base de datos

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
//if ($conn->connect_error) {
//    die("Conexión fallida: " . $conn->connect_error);
//}
//echo "Conexión exitosa";

// Cerrar conexión
//$conn->close();
?>
