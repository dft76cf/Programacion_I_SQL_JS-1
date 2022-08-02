-- operadores de comparacion 
/* =	equal to		
!=	not equal	
<> not equal	
>	greater than
<	less than	
>=	greater than or equal to	
<=	less than or equal to	 */

-- WHILE LOOP
use test;

create table impares(
	codigo int primary key auto_increment,
    numero int,
    resultado varchar(20)
);
-- calcula los numeros impares dentro del rango
-- del numero que enviamos al procedimiento
drop procedure if exists while_loop;
delimiter //
create procedure calculo_impares(in limite int)
begin 
	DECLARE i INT DEFAULT 1; -- inicializar
    -- lo mismo: set @v1 = 5;
	WHILE i <= limite DO -- comparar
		if mod(i,2) <> 0 then
			insert into impares values (default, i,  concat(i , " es impar"));
		else 
			insert into impares values (default, i,  concat(i , " no es impar"));
		end if;
		SET i = i + 1; -- actualizar
	END WHILE;
end //

delimiter ;

call calculo_impares(10);


select * from impares;
