
-- Use the `ref` function to select from other models-
-- for run: dbt run -s stg_orders.sql

SELECT
    o.order_id,
    c.customer_id,
    c.customer_name,
    p.product_id,
    p.product_name,
    o.quantity,
    o.order_date
FROM
    dbtstudy.Orders o
JOIN
    {{ ref("stg_customers") }} c ON o.customer_id = c.customer_id
JOIN
    dbtstudy.Products p ON o.product_id = p.product_id