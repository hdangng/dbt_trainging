-- Use ref function to select from other models-

select
    o.Order_ID,
    c.Customer_id,
    c.Customer_name,
    p.Product_ID,
    p.Product_name,
    o.Quantity,
    o.Order_Date
from
    raw.orders o
JOIN
    {{ ref("stg_customers") }} c on o.Customer_ID = c.Customer_ID
JOIN
    raw.product p ON o.Product_ID = p.Product_ID