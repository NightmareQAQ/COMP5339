{{
config(
materialized = 'table',
unique_key = 'product_key'
)
}}


select -- fill code here 
    product_id as product_key,
    product_name,
    geography_key,
    product_price::numeric

FROM {{ref('staging_product')}}
