/*
 * Use a JOIN to count the number films in the specified category.
 * Use table category, film_category, and film.
 */

CREATE OR REPLACE FUNCTION list_category(TEXT) RETURNS TABLE(title TEXT) AS
$$
-- FIXME: implementation goes here
select film.title from category join film_category on category.category_id =  film_category.category_id join film on film_category.film_id = film.film_id     where category.name=TEXT  order by title ASC;
$$
LANGUAGE SQL
IMMUTABLE
RETURNS NULL ON NULL INPUT;

SELECT list_category('Action');
SELECT list_category('Animation');
SELECT list_category('Children');
SELECT list_category('Classics');
SELECT list_category('Comedy');
SELECT list_category('Documentary');
SELECT list_category('Drama');
SELECT list_category('Family');
SELECT list_category('Foreign');
SELECT list_category('Games');
SELECT list_category('Horror');
SELECT list_category('Music');
SELECT list_category('New');
SELECT list_category('Sci-Fi');
SELECT list_category('Sports');
SELECT list_category('Travel');
