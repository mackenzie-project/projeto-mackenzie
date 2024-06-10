{{ config(
    materialized='table'
    , cluster_by=['card_number']
    , tags=['analytics_conformed_dimension_daily']
) }}

with 
customers as (
  select
    customer_sk
    , customer_name
    , customer_email
  from {{ ref('dim_customers') }}
),

merchant as (
  select 
    merchant_sk
    , merchant_name
    , merchant_email
    , merchant_location
  from {{ ref('dim_merchant') }}
),

cards as (
  select 
   card_sk
   , card_number
   , card_expiry
   , card_cvv
  from {{ ref('dim_cards') }}
),

analise as (
select
  fato.transaction_id
  , customers.customer_name
  , customers.customer_email
  , fato.transaction_amount
  , fato.transaction_date
  , cards.card_number
  , cards.card_expiry
  , cards.card_cvv
  , merchant.merchant_name
  , merchant.merchant_email
  , merchant.merchant_location
  , fato.ip_address
  , fato.device_type
  , fato.transaction_type
  , fato.fraudulent
from `dbt_neoaquison.fact_financial_transaction`fato
inner join customers on fato.customer_sk = customers.customer_sk
inner join merchant on fato.merchant_sk = merchant.merchant_sk
inner join cards on fato.card_sk = cards.card_sk
)

select *
from analise