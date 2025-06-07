#clientes que sean de brasil
SELECT count(id) as brasileros
from clientes
where pais ='brazil';

#cuantas canciones por genero 
SELECT id_genero , count(id) as canciones
FROM canciones
group by id_genero;

#balance clientes

select id_cliente ,
sum(total) as total
from facturas
group by id_cliente;

#duracion de los albumes en promedio
SELECT id_album,avg(milisegundos)
FROM canciones
GROUP BY id_album;

#moviendo archivos,archivo con menor peso en bytes
SELECT nombre, bytes
FROM canciones
ORDER BY bytes ASC
LIMIT 1;

#descuento a clientes con facturacion mayor a 45.
SELECT id_cliente , 
sum(total) as total
from facturas
group by id_cliente
having sum(total) > 45;


