select 
    transaction_date,
    sum(transaction_amount) as total_tax_amount
from {{ ref('transactions') }} 
group by transaction_date 