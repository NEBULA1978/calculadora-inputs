#!/bin/bash

# Solicitar el tipo de selector al usuario
echo "Selecciona el tipo de selector:"
echo "1. querySelector"
echo "2. querySelectorAll"
echo "3. getElementById"
echo "4. getElementsByClassName"
echo "5. getElementsByTagName"
read -p "Elije una opción (1-5): " selector_type

# Solicitar el selector al usuario
read -p "Introduce el selector: " selector

# Solicitar el valor para la variable
read -p "Introduce el valor para la variable: " valor

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
      var variable;

      switch ('$selector_type') {
        case "1":
          variable = document.querySelector("'$selector'");
          break;
        case "2":
          variable = document.querySelectorAll("'$selector'");
          break;
        case "3":
          variable = document.getElementById("'$selector'");
          break;
        case "4":
          variable = document.getElementsByClassName("'$selector'");
          break;
        case "5":
          variable = document.getElementsByTagName("'$selector'");
          break;
        default:
          alert("Selección no válida");
          break;
      }

      // Asignar valor a la variable
      variable.textContent = "'$valor'";

      // Resto del código...
    </script>
  </body>
</html>
'

# Crear el archivo HTML
echo "$html_content" > "$output_file"

echo "Se ha creado el archivo $output_file con éxito."


# En este script, primero se le pregunta al usuario qué tipo de selector desea utilizar, y luego se le pide que introduzca el selector y el valor para la variable. Luego, se utiliza un switch para seleccionar el método de selección de elementos correspondiente según la elección del usuario. El valor ingresado se asigna a la variable y se utiliza en el código JavaScript generado.