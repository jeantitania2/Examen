<?php 

include "navbar.php";

?>

<!doctype html>
<html lang="en">
  <head>
    <title>Prueba de Ingles</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  
    <style>
        body {
            margin: 0;
            display: flex;
        }
        .imagen {
            height: 920px;
            flex: 1;
            background-image: url('libro-ingles.jpg'); /* Cambia esto por la URL de tu imagen */
            background-size: 800px;
            background-position: center;
        }
        .texto {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(to bottom, #ff7e5f, #feb47b);
            border: 2px solid #fff;
            padding: 20px;
            box-shadow: 0 0 50px rgba(0, 0, 0, 0.5);
            position: relative;
        }
        .logo {
            position: absolute;
            top: 20px;
            right: 20px;
            width: 150px; /* Ajusta el tamaño del logo */
        }
        .boton-rojo {
            background-color: red;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }
    </style>
</head>
 
    <h1>Prueba de Ingles</h1>

    <div class="imagen"></div>
    <div class="texto">
        <img src="logod.png" alt="Logo" class="logo"> <!-- Cambia esto por la URL de tu logo -->
        <div>
            <h1>Prueba de Ingles</h1>
            <p>Con esta prueba certificamos que posees el 60% del dominio del idioma Ingles y tienes conocimiento de 2300 palabras.</p>

            <form action="examen.php" method="get">
                <input type="submit" value="Ir a Examen" class="boton-rojo">
            </form>
        </div>
    </div>


      
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>

