
-- TOTAL RECORDS IN ALL TABLES

--customers table contains 99441 records
--geolocation table contains 1000163 records
--order_items table contains 112650 records
--order_payments table contains 103886 records
--order_reviews table contains 99224 records
--orders table contains 99441 records
--products table contains 32951 records
--sellers table contains 3095 records
--product_category_translation table contains 71 records

SELECT 'customers' AS table_name, COUNT(*) AS row_count FROM customers
UNION ALL
SELECT 'geolocation', COUNT(*) FROM geolocation
UNION ALL
SELECT 'order_items', COUNT(*) FROM order_items
UNION ALL
SELECT 'order_payments', COUNT(*) FROM order_payments
UNION ALL
SELECT 'order_reviews', COUNT(*) FROM order_reviews
UNION ALL
SELECT 'orders', COUNT(*) FROM orders
UNION ALL
SELECT 'products', COUNT(*) FROM products
UNION ALL
SELECT 'sellers', COUNT(*) FROM sellers
UNION ALL
SELECT 'product_category_translation', COUNT(*) FROM product_category_translation;



