{{ config(
    materialized='incremental'
) }}

SELECT *
FROM {{ source('wide_world_importers', 'application__cities') }}

{% if is_incremental() %}

WHERE city_id > (
    SELECT MAX(city_id)
    FROM {{ this }}
)

{% endif %}