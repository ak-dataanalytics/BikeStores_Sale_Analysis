-- ============================================
  -- Project  : BikeStores Sales Analysis
  -- Author   : Your Name
  -- Date     : 2024
  -- Purpose  : Extracts order-level data for
  --            Excel dashboard reporting
  -- ============================================



use BikeStores

select 
	 o.order_id,
	 concat(c.first_name, ' ', c.last_name) as full_name,
	 c.city,
	 c.state,
	 o.order_date,
	 sum(i.quantity) as total_units,
	 sum(i.quantity * i.list_price * (1 - i.discount)) as revenue,
	 p.product_name,
	 cat.category_name,
	 s.store_name,
	 concat(sta.first_name, ' ',sta.last_name) as sales_rep
from sales.orders o
join sales.customers c
on o.customer_id = c.customer_id
join sales.order_items i
on o.order_id = i.order_id
join production.products p
on p.product_id = i.product_id
join production.categories cat
on p.category_id = cat.category_id
join sales.stores s
on o.store_id = s.store_id
join sales.staffs sta
on sta.staff_id = o.staff_id
group by o.order_id,
	 concat(c.first_name, ' ', c.last_name),
	 c.city,
	 c.state,
	 o.order_date,
	 p.product_name,
	 cat.category_name,
	 s.store_name,
	 concat(sta.first_name, ' ',sta.last_name)