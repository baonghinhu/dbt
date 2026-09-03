{{ config(
    materialized='incremental'
) }}

SELECT *
FROM {{ source('wide_world_importers', 'sales__customers') }}

{% if is_incremental() %}

WHERE customer_id > (
    SELECT MAX(customer_id)
    FROM {{ this }}
)

{% endif %}