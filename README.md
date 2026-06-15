# Elist Post-Pandemic E-commerce Analysis


# Project Background
Elist is a global e-commerce company that sells consumer electronics — including laptops, monitors, headphones, and accessories — through its online storefront. The business operates across four major regions (North America, EMEA, APAC, and Latin America) and acquires customers primarily through direct, email, affiliate, and social media channels. The company offers a loyalty program designed to increase customer retention and repeat purchase rates.
This project analyzes Elist's transactional data from 2019 to 2022 to answer four key business questions: how overall sales trended over time, what the monthly and yearly growth rates looked like, whether the loyalty program is delivering value, and how refund rates and average order values (AOV) performed across products. The goal is to surface actionable insights that can inform decisions across marketing, product, and customer success teams.

## Key terms and metrics used throughout this analysis:

Revenue - Total sales generated from customer purchases. 
Order Count - Number of unique customer orders. 
Average Order Value (AOV) - Average revenue generated per order. 
Monthly Revenue Growth - Change in revenue across months.
Year-over-Year Growth - Revenue growth compared with the previous year.
Refund Rate - Percentage of orders that were refunded.
Loyalty Status - Indicates whether a customer is part of the loyalty program.
Marketing Channel - Channel that influenced or generated the order.
Product Name - Product purchased by the customer.
Purchase Month / Year - Time period when the order was placed.

## Execitive Summary

This project analyzes over 108K e-commerce orders from 2019 to 2022. Total revenue was approximately $28.1M, with the strongest performance occurring in 2020. Revenue peaked in December 2020 at approximately $1.3M before declining in 2022, where most months fell below the overall monthly average of approximately $586K.

Product performance was highly concentrated among a small group of products, with the 27in 4K Gaming Monitor, Apple AirPods Headphones, MacBook Air Laptop, and ThinkPad Laptop contributing the majority of revenue. Loyalty analysis showed that non-loyalty customers generated higher total revenue and higher average order value, while loyalty customers had a higher refund rate. This suggests the loyalty program should be reviewed to determine whether it is attracting high-value customers or simply increasing discount-driven purchasing behavior.

Overall, the dashboard helps identify revenue trends, product performance, customer value differences, marketing channel performance, and refund risk areas that require deeper business investigation.

## Data Structure and ERD (Entity Relationship Diagram)
<img width="1875" height="1114" alt="Elist - ERD" src="https://github.com/user-attachments/assets/350e8c32-48f3-4edd-92ed-df76e876579b" />

# Insights Deep Dive
1. Monthly Revenue Performance
- Revenue increased significantly from 2019 to 2020.
- Monthly revenue peaked in December 2020 at approximately $1.3M.
- The average monthly revenue across the full period was approximately $586K.
- Most months in 2020 and 2021 performed above the average monthly revenue benchmark.
- Revenue declined sharply in 2022, with most months falling below the average.
- The lowest revenue month was October 2022, at approximately $178K.

The monthly trend suggests the company experienced strong growth through 2020, maintained relatively strong performance in 2021, and then faced a noticeable slowdown in 2022. The decline in 2022 should be investigated further to determine whether it was caused by lower order volume, lower average order value, weaker product demand, marketing channel performance, or increased refunds.

2. Order Count and Average Order Value
- Order count and AOV help explain whether revenue changes were caused by customer demand or customer spending behavior.
- If revenue declines while AOV remains stable, the issue is likely lower order volume.
- If revenue declines while order count remains stable, the issue may be lower customer spending per order.
- The dual-axis chart helps separate revenue performance into two drivers: number of orders and average spend per order.

This analysis helps the business understand whether growth should come from acquiring more customers, increasing repeat purchases, improving pricing strategy, or encouraging larger basket sizes through bundles and upselling.

3. Product Performance
- Revenue was concentrated among a small group of products.
- The top revenue-generating products were:
  27in 4K Gaming Monitor
  Apple AirPods Headphones
  MacBook Air Laptop
  ThinkPad Laptop
  Samsung Charging Cable Pack
- The 27in 4K Gaming Monitor was the highest revenue-generating product.
- High-revenue products should be prioritized for inventory planning, marketing campaigns, and product strategy.

A small group of products is responsible for a large share of total revenue. This creates both an opportunity and a risk. These products should receive strong inventory support and marketing attention, but the company should also avoid becoming too dependent on only a few products.


4. Marketing Channel Performance
Direct traffic generated the highest revenue contribution.
Email was the second strongest marketing channel.
Affiliate, social media, and unknown channels contributed less revenue compared with direct and email.
Marketing performance should be evaluated not only by total revenue, but also by order count, AOV, and refund rate.

Business Interpretation
Direct and email channels appear to be the strongest revenue drivers. This suggests the business may have an existing base of customers who return directly or respond well to email campaigns. Lower-performing channels should be reviewed to understand whether the issue is low traffic, poor conversion, weak customer quality, or lower average order value.

5. Loyalty Status Analysis
Non-loyalty customers generated higher total revenue than loyalty customers.
Non-loyalty customers also had a higher average order value.
Loyalty customers had a higher refund rate than non-loyalty customers.
This suggests that loyalty membership does not automatically mean higher customer value in this dataset.

Business Interpretation
The loyalty program should be reviewed to understand whether it is successfully increasing customer value. If loyalty customers have lower AOV or higher refund rates, the company may need to adjust loyalty offers, improve customer targeting, or evaluate whether discounts are attracting lower-margin behavior.


6. Refund Risk
Overall refund rate was approximately 5%.
Some high-revenue products also had higher refund rates.
ThinkPad Laptop and MacBook Air Laptop showed higher refund rates compared with several other products.
Refund analysis is important because refunds reduce net revenue, increase operational costs, and may indicate product quality or customer satisfaction issues.

Business Interpretation
High refund-rate products should be investigated by product, operations, and customer support teams. The issue may be related to product quality, product descriptions, shipping problems, customer expectations, or return policy behavior.

# Recommendations
Sales and Revenue Strategy
Investigate the 2022 revenue decline to identify whether the drop was caused by lower order volume, lower AOV, weaker product demand, or marketing channel underperformance.
Use the monthly average revenue benchmark of approximately $586K as a performance reference for future months.
Review months that fall significantly below the benchmark to identify early warning signs.

Relevant teams: Sales, Finance, Executive Leadership

Product Strategy
Prioritize inventory and marketing support for the top revenue-generating products.
Monitor dependence on a small number of products, as revenue concentration can create business risk.
Review declining or low-performing products to determine whether they should be repositioned, discounted, bundled, or removed.

Relevant teams: Product, Inventory Management, Merchandising, Marketing

Loyalty Program Strategy
Reevaluate the loyalty program to determine whether loyalty customers are generating enough incremental value.
Compare loyalty and non-loyalty customers across revenue, order count, AOV, and refund rate.
Consider redesigning loyalty offers to encourage higher-value purchases rather than only discount-driven behavior.
Investigate why loyalty customers have a higher refund rate.

Relevant teams: Customer Retention, Marketing, Finance, Customer Experience

Marketing Channel Strategy
Continue investing in high-performing channels such as direct and email.
Analyze lower-performing channels to determine whether they have low conversion rates, low AOV, or poor customer quality.
Track marketing channel performance using revenue, orders, AOV, and refund rate together instead of revenue alone.

Relevant teams: Marketing, Growth, Finance

Refund Reduction Strategy
Investigate products with higher refund rates, especially high-value products such as laptops.
Review product descriptions, customer reviews, shipping times, and customer support tickets to identify refund drivers.
Work with suppliers or operations teams to address potential quality or fulfillment issues.

Relevant teams: Operations, Product, Customer Support, Quality Assurance

## Tools Used
Microsoft Excel: data cleaning, pivot analysis, initial exploration
Tableau: dashboard creation and visual analytics
GitHub: project documentation and portfolio presentation
