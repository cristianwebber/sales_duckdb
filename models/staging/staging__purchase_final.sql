WITH

source_data AS (
    SELECT
        inventoryid AS invetory_id
        , store
        , brand
        , description
        , size
        , vendornumber AS vendor_number
        , vendorname AS vendor_name
        , ponumber AS po_number
        , podate AS po_date
        , receivingdate AS receving_date
        , invoicedate AS invoice_date
        , paydate AS pay_date
        , (purchaseprice * 100)::integer AS purchase_price
        , quantity
        , (dollars * 100)::integer AS dollars
        , classification
    FROM {{ source('ecommerce', 'purchases_final') }}
)

SELECT *
FROM source_data
