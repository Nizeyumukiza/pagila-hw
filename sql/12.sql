/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */
select payment.customer_id,first_name, last_name, sum(amount) from payment join customer on customer.customer_id = payment.customer_id GROUP BY payment.customer_id, first_name, last_name ORDER BY last_name ASC;
