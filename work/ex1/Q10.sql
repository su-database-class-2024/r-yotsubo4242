SELECT country_id,COUNT(city) AS city_count FROM city
	GROUP BY country_id
	ORDER BY city_count DESC;