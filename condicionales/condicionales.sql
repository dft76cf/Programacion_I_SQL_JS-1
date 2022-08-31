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

create table t(
	numero int primary key
);


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

-- Calculo de la mayoria de edad
-- out implica un retorno, devuelve datos.
drop procedure if exists mayor_edad;
delimiter //
create procedure mayor_edad(in edad int, out resultado varchar(20))
begin
	if edad < 18 then
		set resultado = "Eres menor de edad";
	else
		set resultado = "Eres mayor de edad";
	end if;
end //

delimiter ;

call mayor_edad(12, @resultado);
select @resultado;

-- Compara dos números con out
drop procedure if exists mayor_dos_numeros;
delimiter //
create procedure mayor_dos_numeros(in n1 int, in n2 int, out resultado varchar (20))
begin
	if n1 > n2 then
		set resultado =  concat(n1, " es mayor que "; n2);
	elseif n2 > n1 then
		set resultado = concat(n2, " es mayor que "; n1;
	else
		set resultado = "son iguales";
	end if;
end //

delimiter ;

call mayor_dos_numeros(2,7, @resultado);
select @resultado;

-- Ejemplo de case 
-- Semáforo
drop procedure if exists semaforo;
delimiter $$
create procedure semaforo(in color varchar (5))
begin
	case color
		when "rojo" then select "No puedes pasar";
		when "ambar" then select "Precaución";
		when "verde" then select "Puedes pasar";
        -- El caso "else no es obligatorio
        else select "color erróneo";
	end case;
end $$

delimiter ;

call semaforo("amarillo");


drop procedure if exists semaforo;
delimiter $$
create procedure ejemplo_case(in dato boolean)
begin
-- Si en el parámetro recibimos un TRUE, añadimos 1 a la tabla t y si recibimos un FALSE, un 0
	case dato
		when true then insert into t values(1);
		when false then insert into t values(0);
		when "verde" then select "Puedes pasar";
        else select "dato erróneo";
	end case;
end $$

delimiter ;

call ejemplo_case(true);
select * from t;


-- Ejercicio prefijo

drop procedure if exists prefijo;
delimiter $$
create procedure prefijo(in telefono varchar (12))
begin
	case substr(telefono, 1, 3)
		when "+34" then select "España";
        else select "Prefijo erróneo";
	end case;
end $$

delimiter ;

call prefijo("+35123456789");

drop procedure if exists test_telefono;
delimiter $$
create procedure test_telefono(in num_tel varchar (12))
begin
	declare prefijo varchar(3);
    set prefijo = substr(num_tel, 1, 3);
	if prefijo = "+34"
		then select "España";
        else select "Prefijo erróneo";
	end if;
end $$

delimiter ;

call prefijo("+35123456789");

-- finde

drop procedure if exists test_finde;
delimiter $$
create procedure test_finde(in dia varchar (12))
begin
	case true
    -- Forzamos la entreada al switch con true para añadir operadores de comparación
		when dia = "Sábado" || dia = "Domingo" then select "Es fin de semana";
        when dia = "Lunes" || dia = "Martes" || dia = "Miércoles" || dia = "Jueves" || dia = "Viernes" then select "Es entre semana";
		else select "No es un día de la semana";
	end case;
end $$

delimiter ;

call test_finde("jjjk");

