/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
select category.name, count(*) as "sum" from category join film_category on category.category_id = film_category.category_id join film on film_category.film_id = film.film_id join language on film.language_id = language.language_id where language.name = 'English' GROUP BY category.name order by category.name ASC;
