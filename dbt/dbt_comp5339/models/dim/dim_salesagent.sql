{{
config(
materialized = 'table',
unique_key = 'sales_agent_key'
)
}}


SELECT
    reseller_id as sales_agent_key,
    reseller_id as original_reseller_id,
    reseller_name,
    commission_pct
FROM
    {{ ref('staging_resellers') }}
UNION ALL
SELECT
    0 AS sales_agent_key,
    NULL AS original_reseller_id,
    'Direct Sales' AS reseller_name,
    NULL AS commission_pct