with

source_data as (
select
    brand as id
    , description
    , classification
    , (price*100)::integer as sell_price
    , (purchaseprice*100)::integer as purchase_price
    , (sell_price - purchase_price) as profit_per_unit
    , size
    , volume
    , vendornumber as vendor_number
    , vendorname as vendor_name
from {{ source('ecommerce', 'purchase_price') }}
)

select *
from source_data
