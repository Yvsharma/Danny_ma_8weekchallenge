-- 1. What is the total amount each customer spent at the restaurant?
select sum(menu.price) ,sales.customer_id from menu
inner join sales on  sales.product_id= menu.product_id
group by customer_id;

-- 2. How many days has each customer visited the restaurant?
select count(product_date),customer_id from sales
group by customer_id;

-- 3. What was the first item from the menu purchased by each customer?
select sales.customer_id,sales.product_date, menu.product_name from menu
inner join sales on sales.product_id=menu.product_id
group by sales.customer_id;



-- 4. What is the most purchased item on the menu and how many times was 
-- it purchased by all customers?
select sales.customer_id,menu.product_name, max(count(sales.product_id)) from menu
inner join sales on sales.product_id= menu.product_id
group by product_id;

select product_id, count(*)from sales
group by product_id
having  count(*)
-- 5. Which item was the most popular for each customer?


-- 6. Which item was purchased first by the customer after they became a member?


-- 7. Which item was purchased just before the customer became a member?


-- 8. What is the total items and amount spent for each member before they became a member?


-- 9.  If each $1 spent equates to 10 points and sushi has a 2x points multiplier - 
-- how many points would each customer have?


-- 10. In the first week after a customer joins the program (including their join date) 
-- they earn 2x points on all items, not just sushi - how many points do customer A and B 
-- have at the end of January?

