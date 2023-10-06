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

# Function to set user-defined values for variables
set_variables() {
    read -r -p "Introduce el nombre del id de header (por ejemplo, titulo1): " id1header
    read -r -p "Cambiar en div resultado el nombre de la clase (por ejemplo, resultado): " claseheader
    read -r -p "Cambiar en nav el nombre de la clase del ul (por ejemplo, opciones): " navclass
    read -r -p "Cambiar en div entrada1 el nombre del id (por ejemplo, entrada1): " idmain
    read -r -p "Cambiar en div entrada2 el nombre del id (por ejemplo, entrada2): " idsection
    read -r -p "Cambiar en script src el nombre del archivo JavaScript (por ejemplo, calculadoramejorada.js): " ejemplojs
    read -r -p "Introduce el nombre del archivo .sh: " archivo_sh
}

# Menu for user choice
echo "1. Modificar variables"
echo "2. Usar valores por defecto"
echo "3. Ingresar archivo .sh"
read -r -p "Selecciona una opción (1/2/3): " choice

case "$choice" in
    1)
        set_variables ;;
    2)
        echo "Usando valores por defecto." ;;
    3)
        read -r -p "Introduce el nombre del archivo .sh: " archivo_sh
        if [ -f "$archivo_sh" ]; then
            echo "Usando el archivo '$archivo_sh'."
            ./"${archivo_sh}"
        else
            echo "El archivo '$archivo_sh' no existe."
        fi
        ;;
    *)
        echo "Opción no válida. Usando valores por defecto." ;;
esac

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
            <li>11) Palíndromo</li>
        </ul>
    </div>
    <div id="'"$idmain"'" style="color:red;font-size:1.6em"></div>
    <div id="'"$idsection"'" style="color:red;font-size:1.6em"></div>
    <form style="'$form_style'">
        <input type="number" id="'"$valor1_id"'" placeholder="Primer valor" />
        <input type="number" id="'"$valor2_id"'" placeholder="Segundo valor" />
        <input type="number" id="'"$opcion_id"'" placeholder="Opción" />
        <input type="button" value="Operación" onclick="operacion();" />
    </form>
    <div id="resultado" style="color:green;font-size:1.6em;margin:auto;text-align:center;">
        Pulsa para realizar una operación
    </div>
</body>
</html>'

# Crear el archivo HTML
echo "$html_content" > "$archivo"

# Mensaje de confirmación
echo "Archivo HTML '$archivo' creado con éxito."
