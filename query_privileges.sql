CREATE USER 'admin'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION; 
use preciodb;
select * from precios;
#QUERY: Precio promedio de la sucursal 9-1-688.
SELECT avg(precio) FROM precios WHERE sucursal_id = '9-1-688';