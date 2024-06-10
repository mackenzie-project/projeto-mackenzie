{{ config(materialized = 'table') }}

with dimension as (
  select 
    {{ generate_surrogate_key(['card_number']) }} as card_sk
    , card_number
    , card_expiry
    , card_cvv
  from {{ ref('stg_financial_transaction') }}
)

select *
from dimension