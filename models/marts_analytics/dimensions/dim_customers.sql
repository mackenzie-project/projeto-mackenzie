{{ config(
    materialized = 'table'
    , labels = {'contains_pii': 'yes'}
) }}

with dimension as (
  select 
    {{ generate_surrogate_key(['customer_name', 'customer_email']) }} as customer_sk
    , customer_name
    , customer_email
  from {{ ref('stg_financial_transaction') }}
)

select *
from dimension