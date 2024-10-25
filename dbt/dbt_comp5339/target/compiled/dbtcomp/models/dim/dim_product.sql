


select -- fill code here 
    product_id as product_key,
    product_name,
    geography_key,
    product_price::numeric

FROM "sales_dw"."dev"."staging_product"