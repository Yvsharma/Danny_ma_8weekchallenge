-- A. Pizza Metrics
select * from customer_orders;
select * from pizza_names;
select * from pizza_recipes;
select * from pizza_toppings;
select * from runner_orders;
select * from runners;
-- 1 How many pizzas were ordered?
select count(order_id)  as "Total order"from customer_orders;

-- 2 How many unique customer orders were made?
select count(distinct customer_id) as "Unique cusomers" from customer_orders;

-- 3 How many successful orders were delivered by each runner?
select count(runner_orders.order_id), runner_id from runner_orders
where not cancellation like '%Cancellation' or cancellation = 'null'
group by runner_id;

-- 4 How many of each type of pizza was delivered?
select pizza_id as 'Pizza ID', count(pizza_id) as 'No. of Pizza' from customer_orders 
group by pizza_id;

-- 5 How many Vegetarian and Meatlovers were ordered by each customer?
select customer_id,pizza_id,count(order_id) as 'Total pizza' from customer_orders
group by customer_id,pizza_id
order by customer_id asc;

-- 6 What was the maximum number of pizzas delivered in a single order?
select order_id,count(order_id) as 'No. of pizza' from customer_orders
group by order_id
order by count(order_id) desc;

-- 7 For each customer, how many delivered pizzas had at least 1 change and how many had no changes?

-- 8 How many pizzas were delivered that had both exclusions and extras?
select count(order_id) as 'No. of pizza having Exclusions and extras' from customer_orders
where exclusions not in ('null') and extras not in ('null');

-- 9 What was the total volume of pizzas ordered for each hour of the day?

-- 10 What was the volume of orders for each day of the week?
select count(order_id), order_time from customer_orders
group by order_time
