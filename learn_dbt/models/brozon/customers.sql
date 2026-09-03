SELECT *
FROM {{ source('wide_world_importers', 'sales__customers') }}