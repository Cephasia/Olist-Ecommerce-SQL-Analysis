-- CHECKING FOR EACH COLUMNS ROW LENGTH
SELECT
    COUNT(*) AS total_rows,
    COUNT(customer_id) AS customer_id_present,
    COUNT(customer_unique_id) AS customer_unique_id_present,
    COUNT(customer_zip_code_prefix) AS zip_code_present,
    COUNT(customer_city) AS city_present,
    COUNT(customer_state) AS state_present
FROM customers;
-- every column has the same row length incuding the customer_id, customer_unique_id, customer_zip_code_prefix, customer_city and customer_sate
-- with the total row count == 99441

-- CHECKING FOR TOTAL NULL VALUES WITHIN EACH DATA COLUMNS
-- there are no null values with every data column
select * from customers
WHERE customers is null; 

-- CHECKING FOR UNSOPPORTED DUPLICATES WITHIN DATA COLUMNS (customer_id)
--there are no duplicate customer_id
select customer_id, count(*) as customer_id_appear
from customers
group by customer_id
having count(*) >1 ;

-- CHECKING FOR BLANK STRINGS (customer_state, customer_city, customer_id, customer_unique_id)
select customer_state, trim(customer_state) as trimmed_customer_state
from customers
where customer_state != trimmed_customer_state ;

select customer_state, upper(customer_state) as uppercase_customer_state
from customers
where customer_state != uppercase_customer_state ;

select customer_city, trim(customer_city) as trimmed_customer_city
from customers
where customer_city  != trimmed_customer_city ;

SELECT *
FROM customers
WHERE customer_city = ''
   OR customer_state = ''
   OR customer_id = ''
   OR customer_unique_id = '';

--ZIPCODE VALIDITY
select *
from customers
where customer_zip_code_prefix <0
	or customer_zip_code_prefix >99999;

--REFERENTIAL INTEGRITY
SELECT c.customer_id, o.customer_id
from customers c 
join orders o
on c.customer_id = o.customer_id
where c.customer_id is null;



-- With deep validation and cleaning, the customers column is now accurate, consistent and traustable for analysis...





























