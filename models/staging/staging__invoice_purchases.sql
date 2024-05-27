WITH

source_data AS (
    SELECT
        vendornumber AS vendor_number
        , vendorname AS vendor_name
        , invoicedate AS invoice_date
        , ponumber AS po_number
        , podate AS po_date
        , paydate AS pay_date
        , quantity
        , (dollars * 100)::integer AS dollars
        , (freight * 100)::integer AS freight
        , approval
    FROM {{ source('ecommerce', 'invoice_purchases') }}
)

SELECT *
FROM source_data
