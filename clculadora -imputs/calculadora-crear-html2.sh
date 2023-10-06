#!/bin/bash

# Define default values for variables
id1header="titulo1"
claseheader="resultado"
navclass="opciones"
idmain="entrada1"
idsection="entrada2"
ejemplojs="calculadoramejorada.js"
valor1_id="valor1"
valor2_id="valor2"
opcion_id="opcion"
form_style="margin: auto;text-align: center"

# Name of the file you want to create
archivo="index.html"

# Contenido del archivo HTML con variables
html_content='<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <title>Calculadora Cultural</title>
    <script src="'$ejemplojs'" defer></script>
</head>
<body>
    <h1 id="'"$id1header"'">Calculadora Cultural</h1>
    <div class="'"$claseheader"'">
        Haz calculadora cultural
        <br /><br />
        <span style="font-size:1.8em">Calculadora</span>
        <ul class="'"$navclass"'">
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
    <div id="'"$idmain"'" style="color:red;font-size:1.6em"></div>
    <div id="'"$idsection"'" style="color:red;font-size:1.6em"></div>
   <form style="'$form_style'">
        <input type="number" id="'"$valor1_id"'" placeholder="Primer valor" />
        <input type="number" id="'"$valor2_id"'" placeholder="Segundo valor" />
        <input type="number" id="'"$opcion_id"'" placeholder="Opción" />
        <input type="button" value="Operacion" onclick="operacion();" />
    </form>
    <div id="resultado" style="color:green;font-size:1.6em;margin:auto;text-align:center;">
        Pulsa para realizar una operación
    </div>
</body>
</html>'

# Crear el archivo HTML
echo "$html_content" >"$archivo"

# Mensaje de confirmación
echo "Archivo HTML '$archivo' creado con éxito."
