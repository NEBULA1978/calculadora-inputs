function input_values() {
    input1 = Number(prompt("Sr. usuario, introduce el primer valor"));
    input2 = Number(prompt("Sr. usuario, introduce el segundo valor"));
    document.getElementById("entrada1").innerHTML = "Primer Valor → " + input1;
    document.getElementById("entrada2").innerHTML = "Segundo Valor → " + input2;
}

function operacion() {
    var x = Number(prompt("Sr. usuario, introduce una opción"));
    var w = document.getElementById("resultado");
    if (x == 0) {
        document.body.innerHTML = "¡Se ha salido!";
    } else if (x == 1) {
        input_values();
        w.innerHTML = input1 + input2;
    } else if (x == 2) {
        input_values();
        w.innerHTML = input1 - input2;
    } else if (x == 3) {
        input_values();
        w.innerHTML = input1 * input2;
    } else if (x == 4) {
        input_values();
        w.innerHTML = input1 % input2;
    } else if (x == 5) {
        var base_actual = Number(prompt("Introduce el número"));
        var base_destino = Number(prompt("Introduce la base de destino"));
        if ((base_destino > 0) && (base_destino <= 16)) {
            w.innerHTML = base_actual.toString(base_destino);
        } else {
            alert("Valor introducido incorrecto");
        }
    } else if (x == 6) {
        var base = Number(prompt("Introduce base"));
        var exponente = Number(prompt("Introduce exp"));
        w.innerHTML = Math.pow(base, exponente);
    } else if (x == 7) {
        var base = Number(prompt("Introduce base"));
        var exponente = Number(prompt("Introduce exp"));
        w.innerHTML = Math.pow(base, exponente);
    } else if (x == 8) {
        var numero = Number(prompt("Introduce el número"));
        w.innerHTML = Math.sqrt(numero);
    } else if (x == 9) {
        var area = Math.pow(Number(prompt("Introduce el radio del círculo")), 2) * Math.PI;
        w.innerHTML = "El área del círculo es → " + area.toFixed(2) + " cm²";
    } else if (x == 10) {
        var pifix = Math.PI.toFixed(4);
        w.innerHTML = pifix;
    }
}
