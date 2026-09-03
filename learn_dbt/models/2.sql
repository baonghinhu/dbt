{{ config(materialized='table') }}
select buying_group_name, count(buying_group_name) as total_buying_group_name
from (
SELECT c.customer_id, c.customer_name, b.buying_group_name 
FROM `vit-lam-data.wide_world_importers.sales__customers` c
join vit-lam-data.wide_world_importers.sales__buying_groups b
on c.buying_group_id = b.buying_group_id
) t
group by buying_group_name