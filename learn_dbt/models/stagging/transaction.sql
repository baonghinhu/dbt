select t.customer_transaction_id, c.customer_name,t.transaction_date, t.tax_amount, t.transaction_amount 
from vit-lam-data.wide_world_importers.sales__customer_transactions t
join vit-lam-data.wide_world_importers.sales__customers c
on t.customer_id = c.customer_id