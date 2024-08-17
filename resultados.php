<?php

include_once "conexion.php";
include "navbar.php";

// Verificar si se solicita la exportación a CSV
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['exportar_csv'])) {
    // Obtener nombre y respuestas del formulario
    $nombre = $_POST['nombre'];
    $pregunta1 = $_POST['pregunta1'];
    $pregunta2 = $_POST['pregunta2'];
    $pregunta3 = $_POST['pregunta3'];
    $pregunta4 = $_POST['pregunta4'];
    $pregunta5 = $_POST['pregunta5'];
    $pregunta3 = $_POST['pregunta6'];
    $pregunta4 = $_POST['pregunta7'];
    $pregunta5 = $_POST['pregunta8'];

    // Obtener respuestas correctas
    $correctas = [];
    $result = $conn->query("SELECT pregunta, respuesta_correcta FROM respuestas_correctas");

    while ($row = $result->fetch_assoc()) {
        $correctas[$row['pregunta']] = $row['respuesta_correcta'];
    }

    // Comparar respuestas y registrar resultados
    $respuestas_usuario = [
        'pregunta1' => $pregunta1,
        'pregunta2' => $pregunta2,
        'pregunta3' => $pregunta3,
        'pregunta4' => $pregunta4,
        'pregunta5' => $pregunta5,
        'pregunta6' => $pregunta6,
        'pregunta7' => $pregunta7,
        'pregunta8' => $pregunta8,
    ];

    // Array para almacenar datos para CSV
    $csvData = [];
    $csvData[] = ['Pregunta', 'Tu Respuesta', 'Respuesta Correcta', 'Resultado'];

    foreach ($respuestas_usuario as $pregunta => $respuesta_usuario) {
        $respuesta_correcta = $correctas[$pregunta];
        $resultado = ($respuesta_usuario === $respuesta_correcta) ? "Correcto" : "Incorrecto";

        // Agregar datos al array CSV
        $csvData[] = [$pregunta, $respuesta_usuario, $respuesta_correcta, $resultado];
    }

    // Exportar a CSV
    header('Content-Type: text/csv');
    header('Content-Disposition: attachment; filename="resultados_' . $nombre . '.csv"');
    $output = fopen('php://output', 'w');
    foreach ($csvData as $row) {
        fputcsv($output, $row);
    }
    fclose($output);
    exit; // Asegúrate de salir después de la exportación
}

?>

<!doctype html>
<html lang="en">
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Comprobar si las respuestas están definidas
    if (isset($_POST['nombre']) && isset($_POST['pregunta1']) && isset($_POST['pregunta2']) && isset($_POST['pregunta3']) && isset($_POST['pregunta4']) && isset($_POST['pregunta5']) && isset($_POST['pregunta6']) && isset($_POST['pregunta7']) && isset($_POST['pregunta8'])) {
        // Obtener nombre y respuestas del formulario
        $nombre = $_POST['nombre'];
        $pregunta1 = $_POST['pregunta1'];
        $pregunta2 = $_POST['pregunta2'];
        $pregunta3 = $_POST['pregunta3'];
        $pregunta4 = $_POST['pregunta4'];
        $pregunta5 = $_POST['pregunta5'];
        $pregunta6 = $_POST['pregunta6'];
        $pregunta7 = $_POST['pregunta7'];
        $pregunta8 = $_POST['pregunta8'];

        // Obtener respuestas correctas
        $correctas = [];
        $result = $conn->query("SELECT pregunta, respuesta_correcta FROM respuestas_correctas");

        while ($row = $result->fetch_assoc()) {
            $correctas[$row['pregunta']] = $row['respuesta_correcta'];
        }

        // Comparar respuestas y registrar resultados
        $respuestas_usuario = [
            'pregunta1' => $pregunta1,
            'pregunta2' => $pregunta2,
            'pregunta3' => $pregunta3,
            'pregunta4' => $pregunta4,
            'pregunta5' => $pregunta5,
            'pregunta6' => $pregunta6,
            'pregunta7' => $pregunta7,
            'pregunta8' => $pregunta8,
        ];

        // Contadores para resultados
        $correctos = 0;
        $incorrectos = 0;

        // Mostrar resultados
        echo "<style>
                table {
                    width: 100%;
                    border-collapse: collapse;
                    margin: 20px 0;
                    text-align: center;
                }
                th, td {
                    padding: 12px;
                    text-align: left;
                    border: 1px solid #ddd;
                }
                th {
                    background-color: #4CAF50;
                    color: white;
                }
                tr:nth-child(even) {
                    background-color: #f2f2f2;
                }
                tr:hover {
                    background-color: #ddd;
                }
              </style>";

        echo "<h1>Resultados del Cuestionario de $nombre</h1>";
        echo "<table>";
        echo "<tr><th>Pregunta</th><th>Tu Respuesta</th><th>Respuesta Correcta</th><th>Resultado</th></tr>";

        foreach ($respuestas_usuario as $pregunta => $respuesta_usuario) {
            $respuesta_correcta = $correctas[$pregunta];
            $resultado = ($respuesta_usuario === $respuesta_correcta) ? "Correcto" : "Incorrecto";

            // Contar correctos e incorrectos
            if ($resultado === "Correcto") {
                $correctos++;
            } else {
                $incorrectos++;
            }

            // Insertar resultados en la base de datos
            $stmt = $conn->prepare("INSERT INTO resultados (nombre, pregunta, respuesta_usuario, respuesta_correcta, resultado) VALUES (?, ?, ?, ?, ?)");
            $stmt->bind_param("sssss", $nombre, $pregunta, $respuesta_usuario, $respuesta_correcta, $resultado);
            $stmt->execute();

            echo "<tr>
                    <td>$pregunta</td>
                    <td>$respuesta_usuario</td>
                    <td>$respuesta_correcta</td>
                    <td>$resultado</td>
                  </tr>";
        }

        echo "</table>";

        // Mostrar totales
        echo "<h2>Totales</h2>";
        echo "<table border='1'>";
        echo "<tr><th>Correctos</th><th>Incorrectos</th></tr>";
        echo "<tr><td>$correctos</td><td>$incorrectos</td></tr>";
        echo "</table>";

        // Cerrar la declaración
        $stmt->close();
    } else {
        echo "Por favor, completa todas las preguntas.";
    }
} else {
    echo "No se han enviado datos.";
}

// Cerrar conexión
$conn->close();

?>

<div class="btn-group" role="group" aria-label="">
    <form method="post" action="Index.php">
        <a class="btn btn-primary" href="Index.php" role="button">Ir al Principio</a>
    </form>
    <form method="post">
        <input type="hidden" name="nombre" value="<?php echo htmlspecialchars($nombre); ?>">
        <input type="hidden" name="pregunta1" value="<?php echo htmlspecialchars($pregunta1); ?>">
        <input type="hidden" name="pregunta2" value="<?php echo htmlspecialchars($pregunta2); ?>">
        <input type="hidden" name="pregunta3" value="<?php echo htmlspecialchars($pregunta3); ?>">
        <input type="hidden" name="pregunta4" value="<?php echo htmlspecialchars($pregunta4); ?>">
        <input type="hidden" name="pregunta5" value="<?php echo htmlspecialchars($pregunta5); ?>">
        <input type="hidden" name="pregunta6" value="<?php echo htmlspecialchars($pregunta6); ?>">
        <input type="hidden" name="pregunta7" value="<?php echo htmlspecialchars($pregunta7); ?>">
        <input type="hidden" name="pregunta8" value="<?php echo htmlspecialchars($pregunta8); ?>">
        <button type="submit" name="exportar_csv" class="btn btn-success">Exportar a CSV</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
