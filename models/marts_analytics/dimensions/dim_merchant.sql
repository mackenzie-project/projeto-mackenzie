{{ config(materialized = 'table') }}

with dimension as (
  select 
    {{ generate_surrogate_key(['customer_name', 'customer_email']) }} as merchant_sk
    , merchant_name
    , merchant_email
    , merchant_location
  from {{ ref('stg_financial_transaction') }}
)

select *
from dimension