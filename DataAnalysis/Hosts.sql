-- Which host has the most offerts?
-- Average amount offerts per host 

-- Create procedure to automate work 
DELIMITER $$
CREATE PROCEDURE show_all_table()
BEGIN 
	SELECT *
	FROM ab_nyc_2019_ac_dd;
END $$
DELIMITER ;

-- Call procedure
CALL show_all_table();

-- Create CTE to find host with the most number of offerts 
WITH most_offerts AS (
	SELECT 
		host_id, 
		host_name, 
		SUM(calculated_host_listings_count) AS amount_offerts,
        ROUND(AVG(calculated_host_listings_count),0) AS avg_offerts
    FROM 
		ab_nyc_2019_AC_DD
    GROUP BY 
		host_id, 
        host_name
)
SELECT *
FROM 
	most_offerts
WHERE 
	amount_offerts > 5
ORDER BY 
	amount_offerts DESC;







