// operadores de comparacion 
/* ==	equal to		
===	equal value and equal 
!=	not equal	
!==	not equal value or not equal 
>	greater than
<	less than	
>=	greater than or equal to	
<=	less than or equal to	 */

// IF - ELSE
/* if (condition) {
    
} else {
    
}
 */

// Calculo de la mayoria de edad

var edad = 30;

if ( edad < 18 ) {
    console.log("Eres menor de edad");
} else {
    console.log("Eres mayor de edad");
}

// --------------

// Calculo de mayor de dos numeros

var n1 = 3;
var n2 = 4;

if (n1 > n2) {
    console.log("n1 es mayor que n2");
} else if(n2 > n1) {
    console.log("n2 es mayor que n1");
} else {
    console.log("Los numeros son iguales");
}


// Calculo de mayor de dos numeros 2

var n1 = 3;
var n2 = 4;

if (n1 > n2) {
    return n1 + " es mayor que " +  n2;
} else if(n2 > n1) {
    return n2 + " es mayor que " +  n1;
} else {
    return "Los numeros son iguales";
}

console.log(resultado);

// Función compara números

function mayor_dos_numeros(n1, n2){
    if(n1 > n2) {
        console.log ("n1 es mayor que n2");
    } else if(n2 > n1) {
        console.log ("n2 es mayor que n1");
        } else {console.log("Son iguales")}
    
}

mayor_dos_numeros(3,4)


