select state, sum(sales) as result from orders o 
group by state
order by state