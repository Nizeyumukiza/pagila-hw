/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */
select film.film_id, film.title, film.language_id, language.name from language join film on language.language_id = film.language_id where (title ILIKE 'k%') or (title ILIKE 'q%') GROUP BY film.language_id, title, film_id, name ORDER BY title ASC;
