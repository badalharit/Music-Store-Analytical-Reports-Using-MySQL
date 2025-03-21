-- Shows total revenue generated per month.

CREATE VIEW vw_monthly_revenue AS
SELECT 
    DATE_FORMAT(invoice_date, '%Y-%m') AS month,
    SUM(total) AS total_revenue,
    COUNT(invoice_id) AS total_sales
FROM tbl_invoice
GROUP BY month
ORDER BY month DESC;
