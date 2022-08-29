select extract('year' from order_date) as year, 
(select sum(sales) from orders where extract('year' from order_date)=2016 and segment='Consumer') as Consumer,
(select sum(sales) from orders where extract('year' from order_date)=2016 and segment='Corporate') as Corporate,
(select sum(sales) from orders where extract('year' from order_date)=2016 and segment='Home Office') as Home_Office
from orders
where extract('year' from order_date)=2016
union
select extract('year' from order_date) as year, 
(select sum(sales) from orders where extract('year' from order_date)=2017 and segment='Consumer') as Consumer,
(select sum(sales) from orders where extract('year' from order_date)=2017 and segment='Corporate') as Corporate,
(select sum(sales) from orders where extract('year' from order_date)=2017 and segment='Home Office') as Home_Office 
from orders
where extract('year' from order_date)=2017
union
select extract('year' from order_date) as year, 
(select sum(sales) from orders where extract('year' from order_date)=2018 and segment='Consumer') as Consumer,
(select sum(sales) from orders where extract('year' from order_date)=2018 and segment='Corporate') as Corporate,
(select sum(sales) from orders where extract('year' from order_date)=2018 and segment='Home Office') as Home_Office
from orders
where extract('year' from order_date)=2018
union
select extract('year' from order_date) as year, 
(select sum(sales) from orders where extract('year' from order_date)=2019 and segment='Consumer') as Consumer,
(select sum(sales) from orders where extract('year' from order_date)=2019 and segment='Corporate') as Corporate,
(select sum(sales) from orders where extract('year' from order_date)=2019 and segment='Home Office') as Home_Office 
from orders
where extract('year' from order_date)=2019
group by year
order by year