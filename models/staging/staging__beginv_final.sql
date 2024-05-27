WITH

source_data AS (
    SELECT
        inventoryid AS inventory_id
        , store
        , city
        , brand
        , description
        , size
        , onhand AS on_hand
        , (price * 100)::integer AS price
        , startdate AS start_date
    FROM {{ source('ecommerce', 'beginv_final') }}
)

SELECT *
FROM source_data
