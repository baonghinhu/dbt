SELECT *
FROM {{ source('wide_world_importers', 'application__cities') }}