SELECT store_id, address, city AS city_name FROM store s
	JOIN address a ON s.address_id = a.address_id
	JOIN city c ON a.city_id = c.city_id;