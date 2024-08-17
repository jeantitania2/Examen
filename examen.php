
<?php 

include "navbar.php";

?>


<body>

<nav class="navbar navbar-expand-sm navbar-dark" style="background-color: #e3f2fd;">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
        aria-expanded="false" aria-label="Toggle navigation"></button>
    <div class="collapse navbar-collapse" id="collapsibleNavId">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
            </li>
        
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>

<!-- Tab panes -->
<div class="tab-content">
    <div class="tab-pane fade show active" id="tab1Id" role="tabpanel"></div>
    <div class="tab-pane fade" id="tab2Id" role="tabpanel"></div>
    <div class="tab-pane fade" id="tab3Id" role="tabpanel"></div>
    <div class="tab-pane fade" id="tab4Id" role="tabpanel"></div>
    <div class="tab-pane fade" id="tab5Id" role="tabpanel"></div>
</div>

<script>
    $('#navId a').click(e => {
        e.preventDefault();
        $(this).tab('show');
    });
</script>
    <h1>Cuestionario</h1>
    <form id="quizForm"  action="resultados.php" method="post">

    <div>
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required>
    </div>
    <br>
        <div>
            <h3>1. ¿COMO SE PRONUNCIAN LAS PRIMERAS  5 LETRAS DEL ABECEDARIO EN INGLES?</h3>
            <label><input type="radio" name="pregunta1" value="A"> A) EI-BI-TI-PI</label><br>
            <label><input type="radio" name="pregunta1" value="B"> B) EI-VI-CI-DI-I</label><br>
            <label><input type="radio" name="pregunta1" value="C"> C) EI-BI-CI-DI-I</label><br>
        </div>

        <div>
            <h3>2. ¿COMO SE PRONUNCIAN LAS ULTIMAS  5 LETRAS DEL ABECEDARIO EN INGLES?</h3>
            <label><input type="radio" name="pregunta2" value="A"> A) ZI-VI-BI-EX-UAI</label><br>
            <label><input type="radio" name="pregunta2" value="B"> B) FI-DOUBLEIU-YEI-KEI-EX</label><br>
            <label><input type="radio" name="pregunta2" value="C"> C) VI-DOUBLEIU-EX-UAY-ZI</label><br>
        </div>

        <div>
            <h3>3. ¿COMO SE PRONUNCIA LA SIGUIENTE PALABRA "FIND"?</h3>
            <label><input type="radio" name="pregunta3" value="A"> A) FAIND</label><br>
            <label><input type="radio" name="pregunta3" value="B"> B) FIND</label><br>
            <label><input type="radio" name="pregunta3" value="C"> C) FEIND</label><br>
            
        </div>

        <div>
            <h3>4. ¿COMO SE PRONUNCIA LA SIGUIENTE PALABRA "FAR"?</h3>
            <label><input type="radio" name="pregunta4" value="A"> A) FAR</label><br>
            <label><input type="radio" name="pregunta4" value="B"> B) FOR</label><br>
            <label><input type="radio" name="pregunta4" value="C"> C) FEIR</label><br>
            
        </div>

        <div>
            <h3>5. ¿COMO SE PRONUNCIA LA SIGUIENTE PALABRA "CALL"?</h3>
            <label><input type="radio" name="pregunta5" value="A"> A) CAIL</label><br>
            <label><input type="radio" name="pregunta5" value="B"> B) COL</label><br>
            <label><input type="radio" name="pregunta5" value="C"> C) CAL</label><br>
           
        </div>

        <div>
            <h3>6.¿COMO SE PRONUNCIA LA SIGUIENTE PALABRA "HIGHT"?</h3>
            <label><input type="radio" name="pregunta6" value="A"> A) JAIGT</label><br>
            <label><input type="radio" name="pregunta6" value="B"> B) JEIGT</label><br>
            <label><input type="radio" name="pregunta6" value="C"> C) JIGHT</label><br>
           
        </div>

        <div>
            <h3>7.¿COMO SE PRONUNCIA LA SIGUIENTE PALABRA "BOLT"?</h3>
            <label><input type="radio" name="pregunta7" value="A"> A) BOLT</label><br>
            <label><input type="radio" name="pregunta7" value="B"> B) BOULT</label><br>
            <label><input type="radio" name="pregunta7" value="C"> C) BALT</label><br>
           
        </div>

        <div>
            <h3>8.¿COMO SE PRONUNCIA LA SIGUIENTE PALABRA "NOBLE"?</h3>
            <label><input type="radio" name="pregunta8" value="A"> A) NOBLE</label><br>
            <label><input type="radio" name="pregunta8" value="B"> B) NOUBOL</label><br>
            <label><input type="radio" name="pregunta8" value="C"> C) NOBOL</label><br>
           
        </div>


        <br>
        <hr>

        <button type="submit">Enviar Respuestas</button>
    </form>
</body>
</html>
