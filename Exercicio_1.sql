-- Faça uma consulta que retorne a lista de filmes e suas categorias correspondentes
SELECT c.name, COUNT(*)
FROM film f,category c, film_category fc
WHERE f.film_id = fc.film_id AND fc.category_id = c.category_id
GROUP BY c.name;

-- Faça uma consulta que retorne a lista de todos os atores com o número filmes que cada ator  

SELECT
  a.last_name, first_name,
  count(fa.film_id) as number_of_films
FROM
  actor a
  INNER JOIN film_actor fa ON a.actor_id = fa.actor_id
  GROUP BY a.actor_id
  ORDER BY number_of_films DESC;


SELECT actor.first_name,
    as ACTOR, count(film.film_id) 
    as FILM
FROM actor, film, film_actor
WHERE film_actor.actor_id = actor.actor_id 
AND film_actor.film_id = film.film_id
GROUP BY (actor.first_name+ ' ' +actor.last_name) 
ORDER BY(actor.first_name+ ' ' +actor.last_name) asc;

-- Faça uma consulta que retorne a lista de atores que atuaram em filmes com mais de duas horas de 
--duração (120min). Ordene a lista pelo numero de filmes que cada ator participou 

SELECT COUNT(*) FROM film
WHERE LENGTH = 120;

SELECT COUNT(*) FROM film_actor
WHERE film_id;


SELECT
  a.first_name,
  count(fa.film_id) as number_of_films
FROM
  actor a
  INNER JOIN film_actor fa ON a.actor_id = fa.actor_id
  INNER JOIN film f ON fa.film_id = f.film_id
WHERE
  f.length > 120
GROUP BY
  a.first_name
ORDER BY
  number_of_films DESC;