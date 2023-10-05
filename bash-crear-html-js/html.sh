#!/bin/bash

cat <<EOL > calculadora.html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <title>Calculadora Cultural</title>
    <script src="calculadoramejorada.js" defer></script>
</head>
<body>
    <h1 id="titulo1">Calculadora Cultural</h1>
    <div class="resultado">
        Haz calculadora cultural
        <br /><br />
        <span style="font-size:1.8em">Calculadora"</span>
        <ul class="opciones">
            <li>0) SALIR</li>
            <li>1) Sumar</li>
            <li>2) Restar</li>
            <li>3) Multiplicar</li>
            <li>4) Dividir</li>
            <li>5) Obtener el módulo</li>
            <li>6) Cambiar de base</li>
            <li>7) Elevar un número</li>
            <li>8) Para la raíz cuadrada</li>
            <li>9) Para calcular área de círculo</li>
            <li>10) Generar número PI con 3 decimales</li>
        </ul>
    </div>
    <div id="entrada1" style="color:red;font-size:1.6em"></div>
    <div id="entrada2" style="color:red;font-size:1.6em"></div>
    <form style="margin: auto;text-align: center">
        <input type="number" id="valor1" placeholder="Primer valor" />
        <input type="number" id="valor2" placeholder="Segundo valor" />
        <input type="number" id="opcion" placeholder="Opción" />
        <input type="button" value="Operacion" onclick="operacion();" />
    </form>
    <div id="resultado" style="color:green;font-size:1.6em;margin:auto;text-align:center;">
        Pulsa para realizar una operación
    </div>
</body>
</html>
EOL

echo "HTML file (calculadora.html) created successfully!"
