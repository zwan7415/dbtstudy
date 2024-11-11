SELECT
    o.order_id,
    c.customer_id,
    c.customer_name,
    p.product_id,
    p.product_name,
    o.quantity,
    {{get_date_parts('order_date')}} as date_extract
FROM
    dbtstudy.Orders o
JOIN
    {{ref("stg_customers")}} c ON o.Customer_ID = c.Customer_ID
JOIN
    dbtstudy.Products p ON o.product_id = p.product_id 
