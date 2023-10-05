#!/bin/bash

# Solicitar selectores al usuario
read -p "Introduce el selector para la variable variable1: " selector1
read -p "Introduce el selector para la variable variable2: " selector2
read -p "Introduce el selector para la variable variable3: " selector3
read -p "Introduce el selector para la variable variable4: " selector4

# Solicitar valores para las variables
read -p "Introduce el valor para la variable valor1: " valor1
read -p "Introduce el valor para la variable valor2: " valor2
read -p "Introduce el valor para la variable valor3: " valor3
read -p "Introduce el valor para la variable valor4: " valor4

# Nombre del archivo de salida
output_file="seleccionar_elementos.html"

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
    <script>
      var variable1 = document.querySelector("'$selector1'");
      var variable2 = document.querySelector("'$selector2'");
      var variable3 = document.querySelector("'$selector3'");
      var variable4 = document.querySelector("'$selector4'");

      // Asignar nuevos valores a las variables
      variable1.textContent = "'$valor1'";
      variable2.textContent = "'$valor2'";
      variable3.textContent = "'$valor3'";
      variable4.textContent = "'$valor4'";

      // Resto del código...
    </script>
  </body>
</html>
'

# Crear el archivo HTML
echo "$html_content" > "$output_file"

echo "Se ha creado el archivo $output_file con éxito."
