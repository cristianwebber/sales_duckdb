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
    ,enddate as end_date
from {{ source('ecommerce', 'endinv_final') }}
)

select *
from source_data
