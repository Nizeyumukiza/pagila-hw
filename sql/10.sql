/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */
select film.title, film.film_id, count(actor_id) AS actor_count from film_actor join film on film_actor.film_id = film.film_id GROUP BY film.film_id ORDER BY actor_count, title ASC;
