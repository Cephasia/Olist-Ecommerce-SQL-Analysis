-- CHECKING FOR EACH COLUMNS ROW LENGTH
SELECT count(order_id) as order_id_present,
count(customer_id) as customer_id_present,
count(order_status) as order_status_present,
count(order_purchase_timestamp) as purchase_timestamp_present,
count(order_approved_at) as approved_date_present,
count(order_delivered_carrier_date) as carrier_date_present,
count(order_delivered_customer_date) as customer_date_present,
count(order_estimated_delivery_date) as order_estimated_date_present
FROM orders;
-- order_id, customer_id, order_status, order_purchase_timestamp and order_estimated_delivery_date column contains the same row length == 99441
-- while others like ; order_delivered_carrier_date, order_delivered_customer_date and order_approved_at_date column aren't corresponding 

-- CHECKING FOR TOTAL NULL VALUES WITHIN EACH DATA COLUMNS

--null order_approved_at_date present == 160
select count(*) as null_order_approved_at_date_present
from orders
where order_approved_at is NULL;

--null order_delivered_carrier_date present == 1783
select count(*) as null_order_delivered_carrier_date_present
from orders
where order_delivered_carrier_date is NULL;

--null order_delivered_customer_date present == 2965
select count(*) as null_order_delivered_customer_date_present
from orders
WHERE order_delivered_customer_date is NULL;

--null order_estimated_delivery_date present == 0
select *
from orders
where order_estimated_delivery_date is null;

--null order_id present == 0
select *
from orders
where order_id is null;

--null customer_id present == 0
select *
from orders
where customer_id is null;

--null order_status present == 0
select *
from orders
where order_status is null;

--null order_purchase_timestamp present == 0
select *
from orders
where order_purchase_timestamp is null;

-- CHECKING FOR UNSOPPORTED DUPLICATES WITHIN DATA COLUMNS (order_id, customer_id)

--no duplicate customer_id
select customer_id, count(*) as customer_id_appear 
from orders
group by customer_id
having count(*) >1;

--no duplicate order_id
select order_id, count(*) as order_id_appear 
from orders
group by order_id
having count(*) >1;

-- CHECKING FOR ALL ORDER STATUS AVAILABLE == 8
select DISTINCT(order_status)
from orders;

-- CHECKING IF NULLS ARE ASSOCIATED WITH CANCELLED/UNAVAILABLE ORDERS
select order_status, count(order_status) as status_count, count(order_approved_at) as order_approved_at
from orders
group by order_status;

SELECT
    order_status,
    COUNT(*) AS null_delivered_customer_date
FROM orders
WHERE order_delivered_customer_date IS NULL
GROUP BY order_status
ORDER BY null_delivered_customer_date DESC;





SELECT order_approved_at 
FROM ORDERS
WHERE order_approved_at is NULL;

UPDATE orders
SET order_approved_at = NULL
WHERE order_approved_at IS NULL; 

select * from orders;

