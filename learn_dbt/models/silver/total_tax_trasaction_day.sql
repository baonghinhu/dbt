select 
    transaction_date,
    round(sum(transaction_amount),2) as total_amount,
    {{ amount_tag('ROUND(SUM(transaction_amount), 2)') }} AS tag
from {{ ref('transactions') }} 
group by transaction_date 