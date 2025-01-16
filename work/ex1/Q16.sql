SELECT c.name, COUNT(*) AS total_rentals, SUM(amount) AS amount FROM payment p
	LEFT JOIN rental r ON p.rental_id = r.rental_id
	LEFT JOIN inventory i ON r.inventory_id = i.inventory_id
	LEFT JOIN film f ON i.film_id = f.film_id
	LEFT JOIN film_category fc ON f.film_id = fc.film_id
	LEFT JOIN category c ON fc.category_id = c.category_id
	GROUP BY c.name
	ORDER BY amount;