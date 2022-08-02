-- Para trabajar con variables en SQL, necesitamos
-- declararlas como "sesion" 
set x = 1; -- error
set @x = 1;
set @y = 1;
set @suma = @x + @y;
select @suma;