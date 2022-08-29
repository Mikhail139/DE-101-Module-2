select 
extract('year' from order_date) as year,
case extract('month' from order_date) 
when 1 then 'january'
when 2 then 'february'
when 3 then 'march'
when 4 then 'april'
when 5 then 'may'
when 6 then 'june'
when 7 then 'jule'
when 8 then 'august'
when 9 then 'september'
when 10 then 'october'
when 11 then 'november'
when 12 then 'december'
end as month,
sum(sales) as sales,
sum(profit) as profit,
round((sum(profit)/sum(sales))*100,0) as profit_ratio,
avg(discount) as discount
from orders 
group by year, extract('month' from order_date)
order by year, extract('month' from order_date)