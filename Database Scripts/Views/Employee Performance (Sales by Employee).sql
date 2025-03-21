-- Shows how many customers each employee manages and their total sales.
CREATE VIEW vw_employee_performance AS
SELECT 
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
    COUNT(DISTINCT c.customer_id) AS total_customers,
    SUM(i.total) AS total_sales
FROM tbl_employee e
LEFT JOIN tbl_customer c ON e.employee_id = c.support_rep_id
LEFT JOIN tbl_invoice i ON c.customer_id = i.customer_id
GROUP BY e.employee_id, employee_name
ORDER BY total_sales DESC;
