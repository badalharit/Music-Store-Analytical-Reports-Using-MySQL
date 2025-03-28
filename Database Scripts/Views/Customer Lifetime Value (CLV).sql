-- Shows total revenue generated by each customer.

CREATE VIEW vw_customer_lifetime_value AS
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(i.invoice_id) AS total_purchases,
    SUM(i.total) AS lifetime_value
FROM tbl_customer c
JOIN tbl_invoice i ON c.customer_id = i.customer_id
GROUP BY c.customer_id, customer_name
ORDER BY lifetime_value DESC;
