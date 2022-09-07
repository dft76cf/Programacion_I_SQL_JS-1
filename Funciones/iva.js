function calculo_iva_envio(p,i,e){
    var precio_total = p * (1 + (i/100));
        switch(e){
            case"peninsula": precio_total + 10;
                break;
            case"baleares": precio_total + 12;
                break;
            case"canarias": precio_total + 15;
                break; 
        default:
            console.log("Zona de envío incorrecta")  ;     
        }

return precio_total;
}

console.log(calculo_iva_envio(100,21,"peninsula"));

// 100 + iva(21%) + 10
// 100 * 1.21 + 19
// 100 * (1 + (21/100))