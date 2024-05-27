with

source_data as (
select
    inventoryid as inventory_id
    , store
    , city
    , brand
    , description
    , size
    , onhand as on_hand
    ,(price*100)::integer as price
    ,startdate as start_date
from {{ source('ecommerce', 'beginv_final') }}
)

select *
from source_data
