/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */
select film.title from category join film_category on category.category_id = film_category.category_id join film on film_category.film_id = film.film_id where category.name='Family' order by title ASC;
