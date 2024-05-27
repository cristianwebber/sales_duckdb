with

source_data as (
select
    vendornumber as vendor_number
    , vendorname as vendor_name
    , invoicedate as invoice_date
    , ponumber as PO_number
    , podate as PO_date
    , paydate as pay_date
    , quantity
    , (dollars*100)::integer as dollars
    , (freight*100)::integer as freight
    , approval
from {{ source('ecommerce', 'invoice_purchases') }}
)

select *
from source_data
