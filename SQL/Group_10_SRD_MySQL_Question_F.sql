/* Question F */

/* Q.1 between 01/12/2020 and 31/12/2020   */
select c.first_name, c.last_name, o.order_date, p.Product_name
from client c
join order_ o
on o.client_id=c.client_id
join product p
on p.product_id=o.product_id
where order_date > '2020/31/12' and	order_date < '2021/31/12';

/* Q.2 - Most frequent Restaurant */
select r.Restaurant_name, count(o.Restaurant_id) Orders_for_Restaurant
from order_ o
join restaurant r
on o.restaurant_id = r.restaurant_id
Group by o.Restaurant_id 
Order by Orders_for_Restaurant desc
Limit 3;

/* Q.3 */
select o.order_date FirstSale, max(o.order_date) LastSale, sum(i.Total) TotalSales, round(avg(i.Total),2) AverageSales, round((sum(i.total)/12),2) AverageSalesMonth 
from order_ o
join invoice i
on o.order_id = i.order_id

;


/* Q.4 */
select County_name, count(1) as number_orders
from order_ o
join client c
on o.Client_id = c.Client_id
join location l
on c.Location_id = l.Location_id
join county co
on l.County_id = co.County_id
group by co.County_id
;


/*	Q.5 List of location where the restaurants have rating*/
select l.Street_name, l.Postal_code
from order_rating o
join restaurant r 
on o.restaurant_id=r.Restaurant_id
join location l
on r.location_id=l.location_id
;