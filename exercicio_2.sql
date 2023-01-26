--Exercício 2

SELECT
  COUNT(*) as total_filmes
from
  (
    SELECT
      f.film_id,
      c.name
    FROM
      film f
      INNER JOIN film_category fc ON f.film_id = fc.film_id
      INNER JOIN category c ON fc.category_id = c.category_id
  ) as numero_total; 