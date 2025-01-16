SELECT city, max(temp_lo)
    FROM weather
    WHERE city LIKE 'S%'
    GROUP BY city
	-- HAVING max(temp_lo) < 50;
    HAVING max(temp_lo) < 40;