WITH

source_data AS (
    SELECT
        inventoryid AS inventory_id
        , store
        , brand
        , description
        , size
        , salesquantity AS sales_quantity
        , (salesdollars * 100)::integer AS sales_dollars
        , (salesprice * 100)::integer AS sales_price
        , salesdate AS sales_date
        , volume
        , classification
        , (excisetax * 100)::integer AS excise_tax
        , vendorno AS vendor_number
        , vendorname AS vendor_name
    FROM {{ source('ecommerce', 'sales_final') }}
)

SELECT *
FROM source_data
