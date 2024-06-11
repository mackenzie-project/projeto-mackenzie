{{ config(
    materialized = 'table'
    , labels = {'contains_pii': 'yes'}
) }}

with dimension as (
  select 
    {{ generate_surrogate_key(['card_number']) }} as card_sk
    , {{ generate_surrogate_key(['card_number']) }} as card_number
    , card_expiry
    , card_cvv
  from {{ ref('stg_financial_transaction') }}
)

select *
from dimension