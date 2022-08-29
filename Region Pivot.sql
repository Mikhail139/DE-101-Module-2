select 'Central' as region, round(((((select count(*) from orders where region='Central'))*1.0)/count(*))*100,2) as percent from orders
union
select 'East' as region, round(((((select count(*) from orders where region='East'))*1.0)/count(*))*100,2) as percent from orders
union
select 'South' as region, round(((((select count(*) from orders where region='South'))*1.0)/count(*))*100,2) as percent from orders
union
select 'West' as region, round(((((select count(*) from orders where region='West'))*1.0)/count(*))*100,2) as percent from orders
union
select 'overall result' as region, '100' as percent
order by percent