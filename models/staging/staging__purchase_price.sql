WITH

source_data AS (
    SELECT
        brand AS id
        , description
        , classification
        , (price * 100)::integer AS sell_price
        , (purchaseprice * 100)::integer AS purchase_price
        , size
        , volume
        , vendornumber AS vendor_number
        , vendorname AS vendor_name
        , (sell_price - purchase_price) AS profit_per_unit
    FROM {{ source('ecommerce', 'purchase_price') }}
)

SELECT *
FROM source_data
