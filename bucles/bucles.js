// Imprimir por consola los 5 primeros numeros (1 al 5)
/* console.log(1);
console.log(2);
... 
console.log(5); */

// 3 ACCIONES para entender los BUCLES
// 1- INICIALIZACION
// 2- COMPARACION
// 3- ACTUALIZACION

// while 
/* while (se cumple la condicion) {
    ejecuta estas instrucion
    console.log("Hola mundo!");
} */

var i = 1; // inicializacion
while(i <= 100) { // comparacion
    console.log(i);
    // actualizacion
    i = i + 1; // i++
}

// impresion de los numeros del 10 al 1
var j = 10;
while(j >= 1){
    console.log(j);
    j--;
}

// for: Esta mas asociado a recorrer Arrays
// mismo ejercicio de imprimir los nums del 1 al 5
for (var i = 1; i <= 5; i++) {
    console.log(i);
}

console.log("--------------");
// recorrer un array
// Array con notas

var notas = [3, 8, 5, 2, 10, 7, 6, 9, 9, 0];
// para recorrer un array, primero tenemos que
// conocer el total de elementos que contiene
// llamado longitud "length"

console.log(notas.length);

for( var i=0 ; i < notas.length; i++) {
    console.log(notas[i]);
}

// comprobar las notas suspendidas

console.log("--------------");


for( var i=0 ; i < notas.length; i++) {
    if (notas[i] < 5) {
        console.log(notas[i]);
    }
}



















 


