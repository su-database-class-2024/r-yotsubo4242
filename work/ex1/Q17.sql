SELECT 
	c.name AS category,
	AVG(DATE_PART('DAY', r.return_date - r.rental_date)) AS avg_rental_date
	FROM payment p
	LEFT JOIN rental r ON p.rental_id = r.rental_id
	LEFT JOIN inventory i ON r.inventory_id = i.inventory_id
	LEFT JOIN film f ON i.film_id = f.film_id
	LEFT JOIN film_category fc ON f.film_id = fc.film_id
	LEFT JOIN category c ON fc.category_id = c.category_id
	GROUP BY c.name
	ORDER BY avg_rental_date;
