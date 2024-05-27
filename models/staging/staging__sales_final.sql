with

source_data as (
select
    inventoryid as inventory_id
    , store
    , brand
    , description
    , size
    , salesquantity as sales_quantity
    , (salesdollars*100):: integer as sales_dollars
    , (salesprice*100):: integer as sales_price
    , salesdate as sales_date
    , volume
    , classification
    , (excisetax*100)::integer as excise_tax
    , vendorno as vendor_number
    , vendorname as vendor_name
from {{ source('ecommerce', 'sales_final') }}
)

select *
from source_data
