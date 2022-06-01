create view invoice_simple as 
select i.invoice_id, o.Order_date, r.Restaurant_name, concat(c.first_name,' ',c.last_name) as Client_name, concat(i.Total,'€') as Bill_total
from invoice i
join order_ o 
on i.order_id = o.order_id
join client c
on o.client_id= c.Client_id
join restaurant r
on r.Restaurant_id=o.Restaurant_id;


create view invoice_detailed as 
select i.invoice_id Invoice_Number, o.Order_date, r.Restaurant_name,l2.Street_name Restaurant_Address,ct2.Email Restaurant_Email, ct2.Cell_number Restaurant_Cell, concat(c.first_name,' ',c.last_name) as Client_Name, l.Street_name Client_Address, ct.Email Client_Email, ct.Cell_number Client_Cell, p.Product_name Product_Description, o.Product_Quantity, p.Product_val, p.Product_discount,o.Product_Total, i.Subtotal,i.PromotionVal Promotion_Val,i.Tax23,i.Total
from invoice i
join order_ o 
on i.order_id = o.order_id
join client c
on o.client_id= c.Client_id
join restaurant r
on r.Restaurant_id=o.Restaurant_id
join contact ct
on ct.Contact_id=c.Contact_id
join contact ct2
on ct2.Contact_id=r.Contact_id
join location l
on l.location_id=c.location_id
join location l2
on l2.location_id=r.location_id
join product p
on p.product_id=o.product_id;