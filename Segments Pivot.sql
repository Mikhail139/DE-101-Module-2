select segment, round(sum(sales),0) as sales, round(sum(profit),0) as profit from orders
group by segment
order by sales