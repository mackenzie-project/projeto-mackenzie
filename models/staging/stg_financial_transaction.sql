{{ config(materialized = 'view') }}

with source as (
    select
        cast(Transaction_ID as string) as transaction_id
        , cast(Customer_Name as string) as customer_name
        , cast(Customer_Email as string) as customer_email
        , cast(Transaction_Amount as float64) as transaction_amount
        , cast(Transaction_Date as date) as transaction_date
        , cast(Merchant_Name as string) as merchant_name
        , cast(Merchant_Email as string) as merchant_email
        , cast(Merchant_Location as string) as merchant_location
        , cast(Card_Number as int64) as card_number
        , cast(Card_Expiry as string) as card_expiry
        , cast(Card_CVV as int64) as card_cvv
        , cast(IP_Address as string) as ip_address
        , cast(Device_Type as string) as device_type
        , cast(Transaction_Type as string) as transaction_type
        , cast(Fraudulent as bool) as fraudulent
    from {{ source('sources', 'financial_transaction') }}
)
select *
from source