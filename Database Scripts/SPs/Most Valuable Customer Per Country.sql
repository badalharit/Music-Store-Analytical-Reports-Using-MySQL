-- Most Valuable Customer Per Country

DELIMITER //

CREATE PROCEDURE GetTopSpenders(IN selected_country VARCHAR(255))
BEGIN
    WITH CountryRevenue AS (
        SELECT c.country, c.customer_id, CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
               SUM(i.total) AS total_spent,
               RANK() OVER (PARTITION BY c.country ORDER BY SUM(i.total) DESC) AS country_rank
        FROM tbl_customer c
        JOIN tbl_invoice i ON c.customer_id = i.customer_id
        GROUP BY c.customer_id, c.country
    )
    SELECT country, customer_name, total_spent
    FROM CountryRevenue
    WHERE country_rank = 1 AND (selected_country = 'All' OR country = selected_country);
END //

DELIMITER ;

-- To execute the stored procedure, use:

-- CALL GetTopSpenders('India');
-- CALL GetTopSpenders('All');
