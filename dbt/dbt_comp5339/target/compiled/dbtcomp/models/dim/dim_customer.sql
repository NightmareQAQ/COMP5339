


select
    -- customer_key,
    -- first_name,
    -- last_name,
    -- email
    customer_key,
    customer_first_name as first_name,
    customer_last_name as last_name,
    customer_email as email
from "sales_dw"."dev"."staging_customers"