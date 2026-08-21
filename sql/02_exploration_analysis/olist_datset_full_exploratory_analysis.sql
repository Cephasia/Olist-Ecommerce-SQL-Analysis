describe tables;

------- REPORTING ORDERS PERIOD (Start date and End date)
SELECT MIN(DATE(order_purchase_timestamp)) AS orders_start_date, 
MAX(DATE(order_purchase_timestamp)) AS orders_end_date
FROM ORDERS;

--  TOP STATES BY ORDERING CUSTOMERS
select customer_state, count(customer_id) as all_customers,
count(distinct(customer_state)) over() as total_customer_state
from customers
group by customer_state 
order by all_customers desc;

--  TOP CITIES BY ORDERING CUSTOMERS
select customer_city, count(customer_id) as all_customers,
count(distinct(customer_city)) over () as total_customer_city
from customers
group by customer_city 
order by all_customers desc;

-- CORRELATION BTW CUSTOMERS ORDER STATUS AND THEIR REVIEW SCORE
WITH customer_order_status AS 
(
	select c.customer_id, order_id, order_status
	from orders o
	join customers c
	on c.customer_id = o.customer_id
)
select  count(customer_id) as customers, count(s.order_id) as orders,
s.order_status, review_score
from customer_order_status s
join order_reviews r
on s.order_id = r.order_id
group by review_score, order_status
order by customers desc;

-- CUSTOMER ORDER STATUS
select count(c.customer_id) as total_customers, count(order_id) as total_orders,
order_status
from orders o
join customers c
on c.customer_id = o.customer_id
group by order_status
order by total_customers desc;

-- CUSTOMERS REVIEW RESPONSE TIME INTERVAL
SELECT customer_id, o.order_id, review_score, 
review_answer_timestamp - review_creation_date AS review_response_within
FROM order_reviews r
JOIN orders o
on r.order_id = o.order_id
order by review_response_within DESC;

-- DELIVERY PERFORMANCE OVER ORDER STATUS
SELECT DISTINCT(order_status),
CASE 
	WHEN order_estimated_delivery_date - order_delivered_customer_date < '00:00:00' THEN 'no_delay'
	WHEN order_estimated_delivery_date - order_delivered_customer_date IS NULL THEN NULL
	ELSE 'delayed'
END AS del_performance_status
FROM ORDERS
GROUP BY order_status, del_performance_status;

-- CUSTOMERS ORDER DELIVERY DELAY TIME INTERVAL
SELECT customer_id, order_id, order_status, 
order_estimated_delivery_date - order_delivered_customer_date AS delay_time
FROM ORDERS
order by delay_time desc;

-- IMPACT OF EVERY DELIVERY DELAY ON CUSTOMERS REVIEW SCORE
WITH customers_del_delay AS 
(
SELECT customer_id, order_id, order_status, 
order_estimated_delivery_date - order_delivered_customer_date AS delay_time
FROM ORDERS
order by delay_time DESC
)
SELECT customer_id, d.order_id, 
d.order_status, delay_time, review_score
FROM customers_del_delay as d
JOIN order_reviews as r
ON d.order_id = r.order_id;

-- MOST ORDERED PRODUCT CATEGORY
select COUNT(order_id) AS orders, SUM(order_item_id) as quantity_ordered, 
product_category_name, SUM(price) as total_price, 
from ORDER_ITEMS I
JOIN PRODUCTS P
ON I.product_id = P.product_id 
GROUP BY product_category_name
ORDER BY orders DESC;

-- MOST ORDERED PRODUCT CATEGORY NAME IN ENGLISH
WITH ordered_product_category AS
(
select COUNT(order_id) AS orders, SUM(order_item_id) as quantity_ordered, 
product_category_name, SUM(price) as total_price, 
from ORDER_ITEMS I
JOIN PRODUCTS P
ON I.product_id = P.product_id 
GROUP BY product_category_name
ORDER BY orders desc
)
SELECT pc.orders, pc.quantity_ordered, pc.product_category_name,
pct.product_category_name_english, pc.total_price
FROM ordered_product_category pc
JOIN product_category_translation pct
ON pc.product_category_name = pct.product_category_name;

SELECT COUNT(customer_id) total_customers, payment_type, SUM(payment_value) total_payment_value
FROM order_payments P
JOIN orders O
ON P.order_id = O.order_id
GROUP BY payment_type;

SELECT * FROM orders;

---------Fishing out customers with zero(0) payment value
-- to know either their orders were cancelled, unavailable or not
SELECT customer_id, payment_type, payment_value
FROM order_payments P
JOIN orders O
ON P.order_id = O.order_id
WHERE payment_value <= 0;

WITH zero_payment_cust AS 
(
SELECT customer_id, payment_type, payment_value
FROM order_payments P
JOIN orders O
ON P.order_id = O.order_id
WHERE payment_value <= 0
) 
SELECT Z.customer_id, payment_type, payment_value, order_status
FROM zero_payment_cust Z
LEFT JOIN orders O
ON Z.customer_id = O.customer_id;

-- MOST PREFERRED PAYMENT METHOD
SELECT COUNT(customer_id) AS total_customers, payment_type, 
SUM(payment_value) AS total_payment_value
FROM order_payments P
JOIN orders O
ON P.order_id = O.order_id
GROUP BY payment_type
HAVING total_payment_value >0
ORDER BY total_customers DESC ;

SELECT * 
FROM order_payments P
JOIN order_items I
ON P.order_id = I.order_id;









