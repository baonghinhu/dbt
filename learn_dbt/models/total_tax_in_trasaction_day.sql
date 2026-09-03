SELECT
    transaction_date,
    sum(transaction_amount) as total_tax_amount
FROM {{ ref('transaction') }}
group by transaction_date



