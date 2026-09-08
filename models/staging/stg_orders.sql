select
    order_id,
    order_date,
    trim(lower(status)) as status,
    amount
from {{ source('retail', 'orders') }}