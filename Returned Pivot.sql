select (((select count(*) from orders where return='Yes')::float)/count(country))*100.00 as Yes from orders --with float

select 'Yes' as returned, round(((((select count(*) from orders where return='Yes'))*1.0)/count(country))*100,2) as percent from orders
union
select 'No' as returned, round(((((select count(*) from orders where return='No'))*1.0)/count(country))*100,2) as percent from orders
union
select 'overall result' as returned, '100' as percent
order by percent