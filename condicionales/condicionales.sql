-- operadores de comparacion 
/* =	equal to		
!=	not equal	
<> not equal	
>	greater than
<	less than	
>=	greater than or equal to	
<=	less than or equal to	 */

-- IF - ELSE
-- Para realizar un condicional como estructura,
-- tenemos que crear un procedimiento
use test;
-- Calculo de la mayoria de edad
drop procedure if exists mayor_edad;
delimiter //
create procedure mayor_edad(in edad int)
begin
	if edad < 18 then
		select "Eres menor de edad";
	else
		select "Eres mayor de edad";
	end if;
end //

delimiter ;

call mayor_edad(15);

-- Calculo de la mayoria de edad
drop procedure if exists mayor_dos_numeros;
delimiter //
create procedure mayor_dos_numeros(in n1 int, in n2 int)
begin
	if n1 > n2 then
		select "n1 es mayor que n2";
	elseif n2 > n1 then
		select "n2 es mayor que n1";
	else 
		select "son iguales";
	end if;
end //

delimiter ;

call mayor_dos_numeros(15,7);

