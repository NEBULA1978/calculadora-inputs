#!/bin/bash

# Solicitar selectores al usuario
read -p "Introduce el selector para la variable \$variable1: " selector1
read -p "Introduce el selector para la variable \$variable2: " selector2
read -p "Introduce el selector para la variable \$variable3: " selector3
read -p "Introduce el selector para la variable \$variable4: " selector4

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
      var $variable1 = document.querySelector("'$selector1'");
      var $variable2 = document.querySelector("'$selector2'");
      var $variable3 = document.querySelector("'$selector3'");
      var $variable4 = document.querySelector("'$selector4'");

      // Resto del código...
    </script>
  </body>
</html>
'

# Crear el archivo HTML
echo "$html_content" > "$output_file"

echo "Se ha creado el archivo $output_file con éxito."

# Con este script, se te preguntará por los selectores que deseas utilizar para cada una de las variables $variable1, $variable2, $variable3 y $variable4. Luego, se generará un archivo HTML con el contenido JavaScript que utiliza estos selectores para asignar los elementos correspondientes a las variables.