ALTER TABLE online_sales
ADD COLUMN amount FLOAT;

UPDATE online_sales
SET amount = quantity * unit_price;

SELECT order_id, quantity, unit_price, amount
FROM online_sales
LIMIT 10;
