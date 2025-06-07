
#consultar todos los albumes
SELECT * 
FROM albumes;

#consultar datos de clientes 
SELECT primer_nombre, telefono 
FROM clientes;

 #clientes de eeuu
 SELECT primer_nombre, telefono , pais
 FROM clientes
 WHERE pais = 'USA';
 
#canciones semi largas (entre 200 y 300 mil milisegundos)
select nombre, milisegundos 
from canciones
where milisegundos > 200000 and milisegundos < 300000
order by milisegundos asc;

#clientes hispanohablantes
SELECT primer_nombre,apellido, pais 
FROM clientes
WHERE pais= 'Spain'
 or pais = 'Argentina';
 
#todos los generos de los albumes
SELECT nombre 
FROM generos
order by nombre ASC ;

#nombres clientes ordenados por pais y ciudad 
SELECT primer_nombre, apellido ,pais ,ciudad
from clientes
order by pais DESC ,ciudad;

#cambio nombre de columna en la ejecucion
SELECT nombre as nombres_de_medios
from tipos_de_medio;

#top 3 mayor duracion
SELECT nombre , milisegundos 
from canciones
order by milisegundos DESC
LIMIT 3;

#canciones ordenadas alfabeticamnente desde el puesto 5 al 10
SELECT nombre 
FROM canciones
order by nombre asc
limit 5
offset 5;