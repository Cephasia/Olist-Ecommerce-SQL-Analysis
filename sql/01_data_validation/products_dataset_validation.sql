-- CHECKING FOR EACH COLUMNS ROW LENGTH
select count(product_id) as product_id_present,
count(product_category_name) as product_category_name_present,
count(product_name_lenght) as product_name_lenght_present,
count(product_description_lenght) as product_description_lenght_present,
count(product_photos_qty) as product_photos_qty_present,
count(product_weight_g) as product_weight_g_present,
count(product_length_cm) as product_length_cm_present,
count(product_height_cm) as product_height_cm_present,
count(product_width_cm) as product_width_cm_present
from products;

-- DATA TYPE CHECKS
describe products;

-- the column product_id has 32,951 records while others product_category_name contains rows lesser than these length

-- CHECKING FOR TOTAL NULL VALUES WITHIN EACH DATA COLUMNS
-- there are no null values within the product_id row
select * from products
WHERE product_id is null; 

-- there are 610 null values within the product_category_name row
select count(*) from products
WHERE product_category_name is null; 

-- there are 610 null values within the product_name_lenght row
select count(*) from products
WHERE product_name_lenght is null; 

-- there are 610 null values within the product_description_lenght row
select count(*) from products
WHERE product_description_lenght is null; 

-- there are 610 null values within the product_photos_qty row
select count(*) from products
WHERE product_photos_qty is null;

-- there are 2 null values within the product_weight_g row
select count(*) from products
WHERE product_weight_g is null;

-- there are 2 null values within the product_length_cm row
select count(*) from products
WHERE product_length_cm is null;

-- there are 2 null values within the product_height_cm row
select count(*) from products
WHERE product_height_cm is null;

-- there are 2 null values within the product_width_cm row
select count(*) from products
WHERE product_width_cm is null;


-- CHECKING FOR UNSOPPORTED DUPLICATES WITHIN DATA COLUMNS (product_id)
--there are no duplicate product_id
select product_id, count(*) as product_id_appear
from products
group by product_id
having count(*) >1 ;

-- CHECKING FOR BLANK STRINGS
-- aside of SQL nulls, there are no blank strings within the product_category_name column
select product_category_name, trim(product_category_name) as trimmed_product_category_name
from products
where product_category_name != trimmed_product_category_name ;

-- aside of SQL nulls, there are no blank strings within the string columns (product_id, product_category_name)
SELECT *
FROM products
WHERE product_id = ''
   OR product_category_name = '';

--INTEGERS VALIDITY
select product_name_lenght, product_description_lenght, product_photos_qty, product_weight_g, product_length_cm, product_height_cm, product_width_cm
from products
where product_name_lenght < 0
or product_description_lenght < 0
or product_photos_qty < 0
or product_weight_g < 0
or product_length_cm < 0
or product_height_cm < 0
or product_width_cm < 0;


select * from products;

-- Validation Status: No critical data-quality issues were identified in the checks performed so far.

