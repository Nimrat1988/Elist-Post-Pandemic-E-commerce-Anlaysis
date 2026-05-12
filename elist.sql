-- Questions and queries from the operations team

--What is the date of the earliest and latest order, returned in one query?
--select min and max of purchase_ts from the table orders.
SELECT min(purchase_ts), max(purchase_ts)
FROM core.orders;

--What is the average order value for purchases made in USD? What about average order value for purchases made in USD in 2019?
--select average of usd_price, currecny from orders table, filter where currency = USD and year 2019.
SELECT avg(usd_price) AS avg_usd_price
FROM core.orders
WHERE currency = 'USD' AND EXTRACT(year from purchase_ts) = 2019;

--Return the id, loyalty program status, and account creation date for customers who made an account on desktop or mobile. Rename the columns to more descriptive names.
--select the columns, filter where account created is desktop or mobile. Rename columns
SELECT id AS customer_id, 
  loyalty_program AS is_loyal_customer,
  account_creation_method,
  created_on AS account_creation_date
FROM core.customers_orig
WHERE account_creation_method IN ('desktop', 'mobile');

--What are all the unique products that were sold in AUD on website, sorted alphabetically?
--select distinct currency, filter where purchase platform = website and ORDER BY ASC
SELECT DISTINCT(product_name)
FROM `core.orders`
WHERE currency = 'AUD' AND purchase_platform = 'website'
ORDER BY product_name;

--What are the first 10 countries in the North American region, sorted in descending alphabetical order?
--select region and country code where region = NA and order by desc
SELECT region, country_code
FROM `core.geo_lookup`
WHERE region = 'NA'
ORDER BY country_code
LIMIT 10;

--What is the total number of orders by shipping month, sorted from most recent to oldest?
--calculate month for each shiping timestamp, and then count the order ids for each month from the order status, order by shipping month in desc.
SELECT EXTRACT(month from ship_ts) AS shipping_month,
  COUNT(DISTINCT order_id) AS order_count
FROM `core.order_status`
GROUP BY shipping_month
ORDER BY shipping_month DESC;

--What is the average order value by year? Can you round the results to 2 decimals?
-- select the year from the purchase stamp, calculate average usd price per year from the orders table and round to 2 decimals

SELECT EXTRACT(YEAR from purchase_ts) AS purchase_year,
  ROUND(AVG(usd_price),2) AS aov
FROM `core.orders`
GROUP BY 1
ORDER BY 1;

--Create a helper column `is_refund`  in the `order_status`  table that returns 1 if there is a refund, 0 if not. Return the first 20 records.
--select case when where if refund_ts is null then 0 else 1 from order_status table and return firm 20 records
SELECT *,
  CASE WHEN refund_ts IS NULL THEN 0 ELSE 1 END AS is_refund
FROM core.order_status
LIMIT 20;

--Return the product IDs and product names of all Apple products.
--select distinct product name from order table 
SELECT DISTINCT product_id, product_name
FROM core.orders
WHERE product_name LIKE '%Apple%' OR product_name LIKE '%Macbook%';

--Calculate the time to ship in days for each order and return all original columns from the table.
--select * and calculate difference between purchase and ship from order status
SELECT *,
  DATE_DIFF(ship_ts, purchase_ts, day) AS days_to_ship
FROM core.order_status;

--What were the order counts, sales, and AOV for Macbooks sold in North America for each quarter across all years? 
-- columns to join are orders, customers and geo looup. Count order_id and calculate sum and average of usd_price.
SELECT region, DATE_TRUNC(o.purchase_ts, QUARTER) AS purchase_quarter,
  COUNT(DISTINCT o.id) AS order_count,
  ROUND(SUM(o.usd_price),2) AS total_sales,
  ROUND(AVG(o.usd_price),2) AS AOV
FROM `core.orders` AS o
LEFT JOIN core.customers_orig AS c
  ON o.customer_id = c.id
LEFT JOIN `core.geo_lookup` AS geo
  ON c.country_code = geo.country_code
WHERE region = 'NA' and product_name LIKE '%Macbook%'
GROUP BY region, purchase_quarter
ORDER BY purchase_quarter DESC;

--For products purchased in 2022 on the website or products purchased on mobile in any year, which region has the average highest time to deliver? 
-- Columns to join orders, order_status, customers and geo_lookup. Find days to deliver by using date_diff function and use avegrage.
SELECT geo.region, AVG(DATE_DIFF(os.delivery_ts, os.purchase_ts, DAY)) AS days_to_deliver
FROM `core.order_status` AS os
LEFT JOIN `core.orders`  AS o
  ON os.order_id = o.id
LEFT JOIN `core.customers_orig` AS c
  ON c.id = o.customer_id
LEFT JOIN `core.geo_lookup` AS geo
  ON geo.country_code = c.country_code
WHERE (EXTRACT(YEAR FROM o.purchase_ts) = 2022 and purchase_platform = 'website') 
  OR purchase_platform = 'mobile'
GROUP BY 1
ORDER BY 2 DESC;

--What was the refund rate and refund count for each product overall? 
--Tables we need orders, order_status, count no. of refunds and calculate refund rate
SELECT CASE WHEN product_name = '27in"" 4k gaming monitor' THEN '27in 4K gaming monitor' ELSE product_name END AS product_clean,
SUM(CASE WHEN refund_ts IS NULL THEN 0 ELSE 1 END) AS refund_count,
  AVG(CASE WHEN refund_ts IS NULL THEN 0 ELSE 1 END) AS refund_rate
FROM `core.order_status` AS os
LEFT JOIN core.orders AS o
  ON o.id = os.order_id
GROUP BY 1
ORDER BY 3 DESC;

--Within each region, what is the most popular product? 
-- Tables to join geo_lookup, orders, customers. Count total orders per product per region, then rank each product and region by the total orders in new CTE, order by this ranking to find the most popular product per region.
WITH order_count_cte AS (
  SELECT 
    geo.region,
    CASE 
      WHEN o.product_name = '27in"" 4k gaming monitor' THEN '27in 4k gaming monitor'
      ELSE o.product_name
    END AS product_clean,
    COUNT(DISTINCT o.id) AS order_count
  FROM `core.orders` AS o
  LEFT JOIN `core.customers_orig` AS c
    ON o.customer_id = c.id
  LEFT JOIN `core.geo_lookup` AS geo
    ON c.country_code = geo.country_code
  GROUP BY 1,2
),
ranking_cte AS (
  SELECT *,
    ROW_NUMBER() OVER (PARTITION BY region ORDER BY order_count DESC) AS ranking
  FROM order_count_cte
)

SELECT *
FROM ranking_cte
WHERE ranking = 1;

--How does the time to make a purchase differ between loyalty customers vs. non-loyalty customers? 
--Tables to join customers, orders, order status. calculate time difference between purchase and account creation, group by loyalty program.
SELECT c.loyalty_program,
ROUND(AVG(DATE_DIFF(o.purchase_ts, c.created_on, day)),2) AS days_to_purchase,
ROUND(AVG(DATE_DIFF(o.purchase_ts, c.created_on, month)),2) AS montha_to_purchase,
FROM `core.customers_orig` AS c
LEFT JOIN core.orders AS o
 ON o.customer_id = c.id
GROUP By 1;
