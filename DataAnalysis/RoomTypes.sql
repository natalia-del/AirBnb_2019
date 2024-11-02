-- Which room type has the most offerts?
-- Which room_typ is the most expensive by neighbourhood and roomtype?

CALL show_all_table();

-- Use CTE to find which room type was offerts the most time
WITH room_typ_choosen AS(
	SELECT 
		room_type,
		COUNT(room_type) as room_type_amount
    FROM 
		ab_nyc_2019_AC_DD
    GROUP BY 
		room_type
)
SELECT *
FROM 
	room_typ_choosen;
    
-- Use CTE to find which room type was the most expensive
WITH price_room_type AS(
	SELECT 
		neighbourhood_group,
		room_type,
		SUM(price) as total_sum_price
    FROM 
		ab_nyc_2019_AC_DD
    GROUP BY 
		neighbourhood_group, room_type
)
SELECT 
	neighbourhood_group,
	room_type,
	total_sum_price,
	RANK() OVER(ORDER BY total_sum_price DESC) AS price_rank
FROM 
	price_room_type 
ORDER BY 
	 total_sum_price desc;



-- add new row for the project
INSERT INTO ab_nyc_2019_AC_DD (id, name, host_id, host_name, neighbourhood_group, neighbourhood, latitude, longitude, room_type,
price, minimum_nights, number_of_reviews, last_review, reviews_per_month, calculated_host_listings_count, availability_365, row_num)
VALUES 
('514439', 'ORIGINAL BROOKLYN LOFT', '236421', 'Jessica', 'Manhattan', 'Upper East Side', '40.77333', '-73.95199', 'Shared room',
30, '3', '82', '2019-05-17', '0.70', '1', '140', '1');




 

