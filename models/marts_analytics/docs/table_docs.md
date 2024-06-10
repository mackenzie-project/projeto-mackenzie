{% docs fact_table_description %}
    Tabela fato que contém os dados de compras efetuadas
{% enddocs %}

{% docs transaction_id_description %}
    ID da transação
{% enddocs %}

{% docs transaction_amount_description %}
    Valor da compra realizada
{% enddocs %}

{% docs card_transaction_table_description %}
    Tabela gerada a partir do modelo dimensional agregando os fatos com as dimensões
{% enddocs %}

{% docs transaction_date_description %}
    Data da compra
{% enddocs %}

{% docs ip_address_description %}
    IP do dispositivo onde a compra foi realizada
{% enddocs %}

{% docs device_type_description %}
    Dispositivo onde a compra foi realizada
{% enddocs %}

{% docs transaction_type_description %}
    Tipo de transação realizada
{% enddocs %}

{% docs fraudulent_description %}
    Flag que indica se a transação é fraudulenta
{% enddocs %}

{% docs customer_table_description %}
    Tabela de dimensão que contém os dados de nome e email do cliente
{% enddocs %}

{% docs customer_sk_description %}
    Surrogate key para identificar o cliente
{% enddocs %}

{% docs customer_name_description %}
    Nome do cliente
{% enddocs %}

{% docs customer_email_description %}
    Email do cliente
{% enddocs %}

{% docs merchant_table_description %}
    Tabela de dimensão que contém os dados do estabelecimento onde foi realizada a transação de compra
{% enddocs %}

{% docs merchant_sk_description %}
    Surrogate key para identificar o estabelecimento
{% enddocs %}

{% docs merchant_name_description %}
    Nome do estabelecimento
{% enddocs %}

{% docs merchant_email_description %}
    Email do estabelecimento
{% enddocs %}

{% docs merchant_location_description %}
    País onde a transação foi realizada
{% enddocs %}

{% docs cards_table_description %}
    Tabela de dimensão que contém os dados dos cartáo que realizou a compra
{% enddocs %}

{% docs card_sk_description %}
    Surrogate key para identificar o cartäo que realizou a compra
{% enddocs %}


{% docs card_number_description %}
    Número do cartão
{% enddocs %}


{% docs card_expiry_description %}
    Mês e ano que expira o cartão
{% enddocs %}


{% docs card_cvv_description %}
    Código CVV do cartão
{% enddocs %}
