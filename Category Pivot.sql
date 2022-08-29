select category,  subcategory, round(sum(sales),0) as sales, round(sum(profit),0) as profit from orders
group by category, subcategory
order by category, sales