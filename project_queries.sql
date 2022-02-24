SELECT product_name FROM products;
SELECT * FROM products;
SELECT id FROM products;
SELECT COUNT(product_name) FROM products;
SELECT * FROM products LIMIT 10 OFFSET 3;
SELECT product_name, id FROM products ORDER BY product_name;
SELECT id FROM products ORDER BY id DESC LIMIT 5;
SELECT 5 + 6 AS 'A', 'de' AS 'Trybe', 2 + 8 AS 'eh';
SELECT notes FROM purchase_orders WHERE notes IS NOT NULL;
SELECT * FROM purchase_orders WHERE created_by > 2 ORDER BY created_by DESC, id;
SELECT notes FROM purchase_orders WHERE notes LIKE '%3_';
SELECT submitted_date FROM purchase_orders WHERE DATE(submitted_date) = '2006-04-26';
SELECT supplier_id FROM purchase_orders WHERE supplier_id = 1 OR supplier_id = 3;
SELECT supplier_id FROM purchase_orders WHERE supplier_id BETWEEN 1 AND 3;
SELECT HOUR(submitted_date) AS submitted_hour FROM purchase_orders;
SELECT submitted_date FROM purchase_orders WHERE submitted_date BETWEEN '2006-01-26 00:00:00' AND '2006-03-31 23:59:59';
SELECT id, supplier_id FROM purchase_orders WHERE supplier_id IN (1, 3, 5, 7);
SELECT * FROM purchase_orders WHERE supplier_id = 3 AND status_id = 2;
SELECT COUNT(*) FROM orders WHERE employee_id IN (5, 6) AND shipper_id = 2;
INSERT INTO order_details (order_id, product_id, quantity, unit_price, discount, status_id, date_allocated, purchase_order_id, inventory_id)
VALUES (69, 80, 15.0000, 15.0000, 0, 2, NULL, NULL, 129);
INSERT INTO order_details (order_id, product_id, quantity, unit_price, discount, status_id, date_allocated, purchase_order_id, inventory_id)
VALUES (69, 80, 15.0000, 15.0000, 0, 2, NULL, NULL, 129), (69, 80, 15.0000, 15.0000, 0, 2, NULL, NULL, 129);
UPDATE order_details
SET discount = 15;
UPDATE order_details
SET discount = 30
WHERE unit_price < 10.0000;
UPDATE order_details
SET discount = 45
WHERE unit_price > 10.0000 AND id >= 30 AND id <= 40;
DELETE FROM order_details
WHERE unit_price < 10.0000;
DELETE FROM order_details
WHERE unit_price > 10.0000;
DELETE FROM order_details;