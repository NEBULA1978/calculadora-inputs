#!/bin/bash

# Solicitar nombres de variables al usuario
echo "Introducir el nombre del ID del primer número"
read -p "Introduce el nombre de la primera variable (por ejemplo, var1): " variable1
echo "Introducir el nombre del ID del segundo número"
read -p "Introduce el nombre de la segunda variable (por ejemplo, var2): " variable2

echo 'Introduce el valor de variable1 en function compararNumeros() {
        $var $variable1 = document.getElementById("'"$variable1"'")'
read -p "Introduce el nombre de la primera variable (por ejemplo, numero1): " variable1_value

echo 'Introduce el valor de variable2 en function compararNumeros() {
        $var $variable2 = document.getElementById("'"$variable2"'")'
read -p "Introduce el nombre de la segunda variable (por ejemplo, numero2): " variable2_value

read -p "Introduce el valor antes de variable (por ejemplo, let o const o var): " var

# Nombre del archivo de salida
output_file="comparar_numeros.html"

# Contenido del archivo HTML
html_content='
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
  </head>
  <body>
    <label>Introduce el primer número:</label>
    <input type="number" id="'$variable1'" min="1">

    <label>Introduce el segundo número:</label>
    <input type="number" id="'$variable2'" min="1">

    <button id="botonComprobar" onclick="compararNumeros()">Comparar números</button>

    <p id="resultado"></p>

    

    <script>
      function compararNumeros() {
        '$var' '$variable1' = document.getElementById("'$variable1'");
        '$var' '$variable2' = document.getElementById("'$variable2'");
        '$var' '$variable1_value' = parseInt('$variable1'.value);
        '$var' '$variable2_value' = parseInt('$variable2'.value);
        '$var' resultadoElemento = document.getElementById("resultado");



        // Validar que los números son válidos
        if (isNaN('$variable1_value') || isNaN('$variable2_value') || '$variable1_value' <= 0 || '$variable2_value' <= 0) {
          resultadoElemento.textContent = "Introduce números válidos";
          return;
        }

        if ('$variable1_value' == '$variable2_value') {
          resultadoElemento.textContent = "LOS NUMEROS SON IGUALES";
        } else if ('$variable1_value' > '$variable2_value') {
          resultadoElemento.textContent =
            "EL NUMERO MAYOR ES: " + '$variable1_value' + " EL NUMERO MENOR ES: " + '$variable2_value';
        } else {
          resultadoElemento.textContent =
            "EL NUMERO MAYOR ES: " + '$variable2_value' + " EL NUMERO MENOR ES: " + '$variable1_value';
        }

        // Borrar los valores de los inputs
        '$variable1'.value = "";
        '$variable2'.value = "";

        // Enfocar en el primer input
        '$variable1'.focus();
      }
    </script>
  </body>
</html>
'

# Crear el archivo HTML
echo "$html_content" >"$output_file"

echo "Se ha creado el archivo $output_file con éxito."
