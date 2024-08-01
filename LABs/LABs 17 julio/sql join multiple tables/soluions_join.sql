use sakila;
/*
#1. Escribe una consulta para mostrar para cada tienda su ID de tienda, ciudad y país.
SELECT store_id,city,country FROM store s 
INNER JOIN address a on a.address_id=s.address_id
INNER JOIN city c on c.city_id=a.city_id
INNER JOIN country co on c.country_id=co.country_id;

#2. Escribe una consulta para mostrar cuánto negocio, en dólares, trajo cada tienda.
SELECT s.store_id as tienda,SUM(amount) as Total FROM store s 
INNER JOIN staff st ON s.store_id=st.store_id
INNER JOIN payment p on p.staff_id = st.staff_id
GROUP BY s.store_id;

#3. ¿Cuál es el tiempo de ejecución promedio de las películas por categoría?
SELECT c.category_id as categoria, AVG(length) as tiempo_promedio FROM film_category c
INNER JOIN film f ON c.film_id=f.film_id
GROUP BY c.category_id;

#4. ¿Qué categorías de películas son las más largas?
SELECT c.category_id as categoria, AVG(length) as tiempo_promedio FROM film_category c
INNER JOIN film f ON c.film_id=f.film_id
GROUP BY c.category_id
ORDER BY AVG(length) DESC
LIMIT 5;

#5. Muestra las películas más alquiladas en orden descendente.
SELECT f.film_id as pelicula, title as titulo, SUM(rental_id) as veces_alquilada FROM film f
INNER JOIN inventory i ON i.film_id=f.film_id
INNER JOIN rental r ON r.inventory_id=i.inventory_id 
GROUP BY f.film_id,title
ORDER BY SUM(rental_id) DESC
LIMIT 5;

#6. Enumera los cinco principales géneros en ingresos brutos en orden descendente.
SELECT c.category_id as idcategoria,c.name as categoria, SUM(amount) as Total 
FROM payment p INNER JOIN rental  r ON r.rental_id= p.rental_id
INNER JOIN inventory i  ON r.inventory_id=i.inventory_id
INNER JOIN film f ON   f.film_id= i.film_id
INNER JOIN film_category fc on f.film_id=fc.film_id
INNER JOIN category c ON c.category_id=fc.category_id
GROUP BY c.category_id,c.name
ORDER BY SUM(amount) DESC
LIMIT 5;

*/

#7. ¿Está "Academy Dinosaur" disponible para alquilar en la Tienda 1?

SELECT  return_date,rental_date,r.last_update,title,store_id FROM film f 
INNER JOIN inventory i ON   f.film_id= i.film_id
INNER JOIN rental r ON r.inventory_id=i.inventory_id
WHERE i.store_id=1 and f.title="Academy Dinosaur" 
ORDER BY return_date DESC,rental_date DESC
LIMIT 4;

#Si, está disponible

