SELECT country_id,COUNT(city) FROM city c
	GROUP BY country_id
	HAVING COUNT(city) >= 20;