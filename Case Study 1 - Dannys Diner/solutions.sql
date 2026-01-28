1. What is the total amount each customer spent at the restaurant?

WITH spend AS (
SELECT customer_id, sales.product_id, product_name, price FROM sales
LEFT JOIN menu
USING (product_id)
ORDER BY customer_id
)

SELECT customer_id, SUM(price)
FROM spend
GROUP BY customer_id
-----------x----------------

2. How many days has each customer visited the restaurant?

SELECT customer_id, COUNT(DISTINCT(order_date)) AS visits
FROM sales
GROUP BY customer_id
ORDER BY customer_id;
-----------x-----------------

3. What was the first item from the menu purchased by each customer?

WITH first_order AS (
SELECT customer_id, order_date, product_name,
DENSE_RANK() OVER(PARTITION BY customer_id ORDER BY order_date) AS rank
FROM sales s
LEFT JOIN menu m
ON s.product_id = m.product_id
ORDER BY customer_id, order_date
)

SELECT customer_id, product_name
FROM first_order
WHERE rank = 1;
-----------x------------------