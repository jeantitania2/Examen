<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de Preguntas</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        div {
            margin-bottom: 15px;
        }

        h3 {
            color: #555;
        }

        label {
            display: block;
            margin: 8px 0;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="radio"] {
            margin-right: 10px;
        }

        button {
            display: block;
            width: 100%;
            padding: 10px;
            font-size: 16px;
            color: #fff;
            background-color: #007BFF;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: grey;
        }

        .navbar {
            background-color: grey; /* Color de fondo */
        }
        .navbar-brand {
            font-size: 1.5rem; /* Tamaño de la marca */
            font-weight: bold; /* Negrita */
        }
        .nav-link {
            color: black !important; /* Color de los enlaces */
            margin: 0 20px; /* Espaciado entre enlaces */
        }
        .nav-link:hover {
            color: blue; /* Color al pasar el mouse */
        }
        .dropdown-menu {
            background-color: #0056b3; /* Color del menú desplegable */
        }
        .dropdown-item {
            color: #ffffff; /* Color de los elementos del menú desplegable */
        }
        .dropdown-item:hover {
            background-color: #FFD700; /* Color al pasar el mouse sobre el menú desplegable */
        }
    </style>
</head>
