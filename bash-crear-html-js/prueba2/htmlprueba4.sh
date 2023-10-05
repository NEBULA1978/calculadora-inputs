#!/bin/bash

# Solicitar el tipo de selector al usuario
echo "Selecciona el tipo de selector:"
echo "1. querySelector"
echo "2. querySelectorAll"
echo "3. getElementById"
echo "4. getElementsByClassName"
echo "5. getElementsByTagName"
read -p "Elije una opción (1-5): " selector_type

# Declarar los arreglos para los selectores y valores
declare -a selectors
declare -a values

# Solicitar los selectores y valores al usuario
for i in {1..4}; do
    read -r "Introduce el selector para variable$i: " selector
    selectors[$i]="$selector"
    read -r "Introduce el valor para variable$i: " valor
    values[$i]="$valor"
done

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
      // Declarar las variables
      var variables = [];

      // Asignar elementos a las variables según el tipo de selector
      switch ('$selector_type') {
        case "1":
          for (var i = 1; i <= 4; i++) {
            variables[i] = document.querySelector("'${selectors[$i]}'");
          }
          break;
        case "2":
          for (var i = 1; i <= 4; i++) {
            variables[i] = document.querySelectorAll("'${selectors[$i]}'");
          }
          break;
        case "3":
          for (var i = 1; i <= 4; i++) {
            variables[i] = document.getElementById("'${selectors[$i]}'");
          }
          break;
        case "4":
          for (var i = 1; i <= 4; i++) {
            variables[i] = document.getElementsByClassName("'${selectors[$i]}'");
          }
          break;
        case "5":
          for (var i = 1; i <= 4; i++) {
            variables[i] = document.getElementsByTagName("'${selectors[$i]}'");
          }
          break;
        default:
          alert("Selección no válida");
          break;
      }

      // Asignar valores a las variables
      for (var i = 1; i <= 4; i++) {
        variables[i][0].textContent = "'${values[$i]}'";
      }

      // Resto del código...
    </script>
  </body>
</html>
'

# Crear el archivo HTML
echo "$html_content" > "$output_file"

echo "Se ha creado el archivo $output_file con éxito."
