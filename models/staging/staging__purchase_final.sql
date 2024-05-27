with

source_data as (
select
    InventoryId as invetory_id
    , store
    , brand
    , description
    , size
    , vendornumber as vendor_number
    , vendorname as vendor_name
    , ponumber as PO_number
    , podate as PO_date
    , ReceivingDate as receving_date
    , InvoiceDate as invoice_date
    , PayDate as pay_date
    , (PurchasePrice*100)::integer as purchase_price
    , quantity
    , (dollars*100)::integer as dollars
    , classification
from {{ source('ecommerce', 'purchases_final') }}
)

select *
from source_data
