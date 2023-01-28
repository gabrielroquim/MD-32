# MD-32 Banco de Dados SQLnoSQL
### Curso: Engenharia Qualidade de Software
[EBAC - Engenheiro Qualidade de Software](https://ebaconline.com.br/engenheiro-de-qualidade)

## __Banco de dados utlizados__
- [SAKILA GIT](https://github.com/sakiladb/mysql)
#### Clonar GIT SAKILA
 ```console
$ git clone https://github.com/sakiladb/mysql.git
```
- database: sakila
- username / password: sakila / p_ssW0rd

## Algumas consultas interessantes: SAKILA
### Quantidade de filmes por categoria.
~~~~mysql
SELECT c.name, COUNT(*)
FROM film f,category c, film_category fc
WHERE f.film_id = fc.film_id AND fc.category_id = c.category_id
GROUP BY c.name; 
~~~~~

### Duração média de todos os filmes.
~~~~~mysql
SELECT AVG(length)
FROM film;
~~~~~

### Lista de todos os filmes
~~~~~mysql
SELECT * 
FROM film;
~~~~~

### Lista de todos os filmes com tempo de duração < 60 minutos
~~~~~mysql
SELECT *
FROM film
WHERE length < 60;
~~~~~


### Exibir nome e sobrenome do ator
~~~~~mysql
select first_name, last_name
from actor;
~~~~~

### Exibir nome do ator usando um script coringa
~~~~~mysql
selecione actor_id, first_name last_name 
do ator
onde last_name como '%An%';
~~~~~
