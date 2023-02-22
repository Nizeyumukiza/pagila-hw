/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */
select film.film_id, title, count(store_id) from inventory join film on film.film_id = inventory.film_id where title ILIKE 'h%' GROUP BY film.film_id ORDER BY title DESC;
