{{ config(materialized = 'table') }}

with fact as (
    select
        transaction_id
        , {{ generate_surrogate_key(['customer_name', 'customer_email']) }} as customer_sk
        , {{ generate_surrogate_key(['customer_name', 'customer_email']) }} as merchant_sk
        , transaction_amount
        , transaction_date
        , card_number
        , card_expiry
        , card_cvv
        , ip_address
        , device_type
        , transaction_type
        , fraudulent
    from {{ ref('stg_financial_transaction') }}
)
select *
from fact