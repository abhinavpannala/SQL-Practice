# Write your MySQL query statement below
/*
Using avg() gives average sales per purchase. Use sum() to calculate average per unit price
*/
select p.product_id, IFNULL(round(sum(p.price*s.units)/sum(s.units),2),0) as average_price
from prices as p
left join unitssold as s
on p.product_id=s.product_id and s.purchase_date between p.start_date and p.end_date
group by p.product_id