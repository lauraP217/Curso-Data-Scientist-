# LAB mysql-select
USE publications;

# Desafío 1 - ¿Quién ha publicado qué y dónde?
SELECT authors.au_id as 'Auhor id', au_lname as 'Last Name',au_fname as 'First Name', title, pub_name as publisher
FROM  titleauthor INNER JOIN authors ON titleauthor.au_id=authors.au_id
INNER JOIN  titles on titleauthor.title_id=titles.title_id
INNER JOIN publishers on titles.pub_id= publishers.pub_id
ORDER BY authors.au_id;

# Desafío 2 - ¿Quién ha publicado cuántos y donde?

SELECT authors.au_id as 'Auhor id', au_lname as 'Last Name',au_fname as 'First Name', pub_name as publisher, count(title) as 'Title Count'
FROM  titleauthor INNER JOIN authors ON titleauthor.au_id=authors.au_id
INNER JOIN titles on titleauthor.title_id=titles.title_id
INNER JOIN publishers on titles.pub_id= publishers.pub_id
GROUP BY authors.au_id , au_lname ,au_fname, pub_name 
ORDER BY authors.au_id DESC;

# Desafío 3 - Autores Más Vendidos - ¿Quiénes son los 3 principales autores que han vendido el mayor número de títulos? Escribe una consulta para averiguarlo.
#- Tu salida debería estar ordenada basándose en `TOTAL` de mayor a menor.- Solo muestra los 3 mejores autores en ventas.
SELECT authors.au_id as 'Auhor id', au_lname as 'Last Name',au_fname as 'First Name' , COUNT(sales.title_id) as Total 
FROM  titleauthor INNER JOIN authors ON titleauthor.au_id=authors.au_id
INNER JOIN sales on titleauthor.title_id=sales.title_id
GROUP BY authors.au_id , au_lname ,au_fname
ORDER BY COUNT(title_id)  DESC
LIMIT 3;


## Desafío 4 - Ranking de Autores Más Vendidos - Ahora modifica tu solución en el Desafío 3 para que la salida muestre a todos los 23 autores en lugar de solo los 3 principales.
# Ten en cuenta que los autores que han vendido 0 títulos también deben aparecer en tu salida. También ordena tus resultados basándose en `TOTAL` de mayor a menor.

SELECT authors.au_id as 'Auhor id', au_lname as 'Last Name',au_fname as 'First Name' , COUNT(sales.title_id) as Total 
FROM  authors  LEFT JOIN titleauthor ON titleauthor.au_id=authors.au_id
LEFT JOIN sales on titleauthor.title_id=sales.title_id
GROUP BY authors.au_id , au_lname ,au_fname
ORDER BY COUNT(title_id)  DESC

