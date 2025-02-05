SELECT city FROM city c
	LEFT OUTER JOIN address a
	ON c.city_id = a.city_id
	WHERE address IS NULL;