-- Shows customers who haven't purchased anything in the last 6 months.
CREATE VIEW vw_high_risk_customers AS
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    MAX(i.invoice_date) AS last_purchase_date,
    DATEDIFF(NOW(), MAX(i.invoice_date)) AS days_since_last_purchase
FROM tbl_customer c
JOIN tbl_invoice i ON c.customer_id = i.customer_id
GROUP BY c.customer_id, customer_name
HAVING days_since_last_purchase > 180
ORDER BY days_since_last_purchase DESC;
