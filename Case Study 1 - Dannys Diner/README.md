# 🍜 Case Study 1: Danny's Diner

## 📖 Business Task
Danny wants to use data to answer a few simple questions about his customers, especially about their visiting patterns, how much money they’ve spent, and also which menu items are their favorite. 

Developing this deeper connection with his customers will help him deliver a better and more personalized experience for his loyal customers. He plans on using these insights to help him decide whether he should expand the existing customer loyalty program.

## 🛠️ Entity Relationship Diagram (ERD)
The database consists of three key tables:
- **sales**: Records all `customer_id` orders with `order_date` and `product_id`.
- **menu**: Maps `product_id` to `product_name` and `price`.
- **members**: Tracks the `join_date` for customers in the loyalty program.



## 🚀 Solutions Included
This project demonstrates the following SQL techniques:
- **Joins:** Connecting customer orders with menu pricing and membership status.
- **Aggregations:** Calculating total spend and visit frequency using `SUM`, `COUNT`, and `GROUP BY`.
- **Window Functions:** Ranking products by popularity and identifying the first items purchased.
- **CTEs (Common Table Expressions):** Creating organized, readable logic for complex multi-step queries.

## 📂 Project Structure
- `schema.sql`: Script to create tables and insert sample data.
- `solutions.sql`: My SQL queries providing answers to Danny's business questions.

## 💡 Key Business Questions Answered
1. What is the total amount each customer spent at the restaurant?
2. How many days has each customer visited the restaurant?
3. What was the first item from the menu purchased by each customer?
4. What is the most purchased item on the menu and how many times was it purchased by all customers?
5. Which item was the most popular for each customer?
6. Which item was purchased first by the customer after they became a member?
7. Which item was purchased just before the customer became a member?
8. What is the total items and amount spent for each member before they became a member?
9.  If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?
10. In the first week after a customer joins the program (including their join date) they earn 2x points on all items, not just sushi - how many points do customer A and B have at the end of January?