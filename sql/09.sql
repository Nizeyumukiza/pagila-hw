/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
select staff.first_name, staff.last_name, sum(payment.amount) from staff join payment on staff.staff_id = payment.staff_id  where (SELECT CAST(payment_date AS varchar)) ILIKE '2020-01%' GROUP BY staff.staff_id ORDER BY first_name ASC;
