-- Shows total revenue generated by each customer.

CREATE VIEW vw_customer_lifetime_value AS
select 
    ROW_NUMBER() OVER (ORDER BY SUM(i.total) DESC) AS id,
    `c`.`customer_id` AS `customer_id`,
    concat(`c`.`first_name`,' ',`c`.`last_name`) AS `customer_name`,
    count(`i`.`invoice_id`) AS `total_purchases`,
    sum(`i`.`total`) AS `lifetime_value` 
from (`tbl_customer` `c` join `tbl_invoice` `i` on((`c`.`customer_id` = `i`.`customer_id`))) 
    group by `c`.`customer_id`,`customer_name` 
    order by `lifetime_value` desc