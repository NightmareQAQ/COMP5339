{{ config(
    materialized = 'table',
    unique_key = ['customer_key', 'product_key', 'channel_key', 'bought_date_key', 'geography_key']
) }}

SELECT
    customer_key,                
    product_key,               
    channel_key,                   
    bought_date_key,               
    geography_key,                 
    total_amount::numeric,         
    qty::numeric,                    
    product_price::numeric,          
    commissionpaid::numeric,         
    commissionpct::numeric,         
    loaded_timestamp,                
    reseller_id
FROM
    {{ ref('staging_transactions') }}
