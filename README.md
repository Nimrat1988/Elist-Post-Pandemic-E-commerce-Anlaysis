
# Elist Post-Pandemic E-commerce Analysis


# Project Background
Elist is a fictonal global e-commerce company that sells consumer electronics, including laptops, monitors, headphones, and accessories, through its online storefront. The business operates across four major regions (North America, EMEA, APAC, and Latin America) and acquires customers primarily through direct, email, affiliate, and social media channels. The company offers a loyalty program designed to increase customer retention and repeat purchase rates.

This project analyzes Elist's transactional data from 2019 to 2022 to answer four key business questions: how overall sales trended over time, what the monthly and yearly growth rates looked like, whether the loyalty program is delivering value, and how refund rates and average order values (AOV) performed across products. Regional performance was also analyzed to identify geographic trends. The goal is to surface actionable insights that can inform decisions across marketing, product, and customer success teams.

## Key terms and metrics used throughout this analysis:

- Revenue - Total sales generated from customer purchases.
- Order Count - Number of unique customer orders.
- Average Order Value (AOV) - Average revenue generated per order.
-  Mom/YoY Growth - Month-over-month and year-over-year % change in revenue.
-  Refund Rate - Percentage of orders that were refunded.
-  Loyalty Status - Indicates whether a customer is part of the loyalty program.
-  Marketing Channel - Channel that influenced or generated the order.
-  Region - Geographic region - NA, EMEA, APAC, LATAM

## Executive Summary

<img width="856" height="507" alt="Company Overview" src="https://github.com/user-attachments/assets/cf8af21e-7477-41aa-aa4d-724c9463802b" />


- Elist generaged **$28.1M** in total revenue across **$108,127** between 2019 and 2022, with an average order value of **$260** and an overall refund rate of **5%**.
- Revenue grew steadily from 2019, surged during the pandemic, and peaked at **$1.3M in December 2020**, more than double the four-year montly average of $586K. every month in 2022 fell below that average, with the lowest point hitting **$178K in October 2022**, an 86% drop from peak.
- 2020 delivered **108% revenue growth** driven by simultaneous gains in order volume and AOV. By 2022 the situation had reversed — revenue fell **47% year-over-year**, order count dropped **36%**, and AOV declined **18%**. All three metrics declining together confirms a broad demand contraction, not a product or channel-specific issue.
- Non-loyalty customers still outspend loyalty members, generating **61% of total revenue** at a higher AOV of **$274 vs $240**. However loyalty revenue grew **6x from $415K to $2.7M** while non-loyalty collapsed from $7.2M to $2.2M. By 2022 the two groups were nearly equal, the program is gaining traction precisely as organic demand fails.
- Direct channel dominates at **82.65% of total revenue (~$23M)**. Email contributes another **11.92%**. Together they account for 95% of all sales. Affiliate and social media combined contribute under 5% — their ROI warrants review.
- Four products carry the business — the 27in 4K Gaming Monitor ($9.85M), Apple AirPods ($7.74M), MacBook Air ($6.3M), and ThinkPad Laptop ($3.2M). All four declined sharply in 2022 with no replacement products in the catalog positioned to fill the gap.
- MacBook Air is the highest-risk product, **11.4% refund rate** at $6.3M revenue puts it in the top-right danger quadrant. ThinkPad follows at **11.8%** with lower revenue limiting the damage. Gaming Monitor and AirPods are healthy despite high volume. Note: 2022 refund data is incomplete and shows 0% — this reflects missing data, not actual performance.


## Data Structure and ERD (Entity Relationship Diagram)
<img width="1875" height="1114" alt="Elist - ERD" src="https://github.com/user-attachments/assets/350e8c32-48f3-4edd-92ed-df76e876579b" />

# Insights Deep-Dive
## 1. Sales Trends - Strong Growth Through 2020 Followed by Consistent Decline Through 2022

<img width="1995" height="1170" alt="Montly trend" src="https://github.com/user-attachments/assets/7e6fced7-d8c2-4766-86a6-52c8d76e2a77" />

- Revenue peaked at $1.3M in December 2020 — more than double the four-year monthly average of $586K shown by the orange reference line.
- Revenue remained above average through most of 2021 before declining consistently — every month in 2022 fell below the $586K benchmark.
- The lowest monthly revenue was $178K in October 2022 — an 86% drop from the December 2020 peak.
- The pandemic created an outsized demand spike for consumer electronics that should be treated as an anomaly when projecting future baselines.



## 2. Order Volume and AOV — Both Drivers Declined Simultaneously in 2022

<img width="2008" height="1173" alt="Order Count and AOV" src="https://github.com/user-attachments/assets/d79cb0d8-380a-4d6c-b246-a197fadc22fb" />

- Order count peaked at 4,019 in November 2020 and fell to a low of 825 by late 2022 - a 79% decline.
- AOV peaked at $321.50 during the 2020 surge and compressed to $216.09 by 2022 — a 33% drop.
- In 2022 both metrics declined simultaneously — confirming the revenue decline was demand-driven, not a pricing issue.
- The 2020 peak was driven by both volume and spend — two tailwinds that both reversed after the pandemic.



## 3. Yearly Growth Rates — 2020 Was the Anomaly, 2022 Was the Worst Year

<img width="632" height="351" alt="Yearly Growth" src="https://github.com/user-attachments/assets/1808cdec-0138-4b24-a817-01e850a061aa" />

- 2020 delivered 108% revenue growth, 48% AOV growth, and 40% order count growth — all three metrics grew simultaneously.
- 2021 showed early deceleration — revenue fell 41%, order count dropped 22%, and AOV declined 24%.
- 2022 was the worst year across every metric — revenue down 47%, order count down 36%, AOV down 18%.
- Consistent decline across all three metrics confirms a broad market contraction, not a product or channel-specific issue.



## 4. Loyalty Program — The Only Metric Moving in the Right Direction


<img width="500" height="1141" alt="Loyalty Status" src="https://github.com/user-attachments/assets/3d5058ec-4d76-4e09-a25a-8361f3d952be" /> 


- Non-loyalty customers outspent loyalty members in every year — but the gap is closing fast.
- Loyalty revenue grew from $415K in 2019 to $2.7M in 2022 — a 6x increase.
- Non-loyalty revenue collapsed from $7.2M in 2020 to $2.2M in 2022.
- By 2022 the two groups were nearly equal in revenue — the program is gaining traction precisely as organic demand fails.




<img width="986" height="277" alt="Loyalty vs Non-Loyalty Pivot" src="https://github.com/user-attachments/assets/8d1a59fa-1538-4646-865f-57032c720afb" />

- Non-loyalty customers account for 61% of total sales vs loyalty at 39%.
- Non-loyalty AOV ($274.55) is 14% higher than loyalty AOV ($240.12).
- Non-loyalty customers place more orders — 58% of total order count vs loyalty at 42%.
- Loyalty program may be attracting discount-driven behaviour rather than high-value purchases — the offer structure should be reviewed.


## 5. Marketing Channels — The Business Runs on Two Channels


<img width="754" height="643" alt="Marketing pie chart-2" src="https://github.com/user-attachments/assets/158166bc-88c3-4c29-a1d2-9306b7900b40" />



- Direct channel drives 82.65% of total revenue (~$23M), overwhelming dominance.
- Email adds another 11.92% — together they account for 95% of all revenue.
- Affiliate and social media combined contribute under 5%.
- The business is heavily dependent on two channels, diversification is a strategic risk to address.


## 6. Product Performance — Four Products Carry the Business

<img width="1342" height="246" alt="Product Performance" src="https://github.com/user-attachments/assets/264cd616-6ac0-458d-ad8d-a124434ffb8a" />

- 27in 4K Gaming Monitor led revenue at $9.85M across all years — strongest single product.
- Apple AirPods led order volume at 48,404 units — highest demand product despite lower AOV of $160.
- MacBook Air had the highest AOV at $1,588 — most valuable per transaction.
- All four top products declined sharply in 2022 — MacBook Air fell from $1.9M to $852K, a 55% single-year decline.
- No other product in the catalog is positioned to replace them if the decline continues.


## 7. Regional Performance — North America Dominates But All Regions Declined in 2022

<img width="659" height="465" alt="Region Performance" src="https://github.com/user-attachments/assets/a4a5739f-9757-48da-8f2f-249c08a25592" />

- NA consistently led every year — peaking at $5.3M in 2020, nearly double EMEA's peak of $2.9M.
- EMEA was a consistent second, followed by APAC then LATAM.
- 2020 was the peak year across every single region — pandemic demand was a global phenomenon.
- Every region declined in 2022 — NA dropped from $4.5M to $2.7M, EMEA from $2.8M to $1.4M.
- LATAM never exceeded $0.6M in any single year — worth investigating whether continued investment is justified.
- Grand Total confirms the overall story — $10.2M peak in 2020 down to $5.0M in 2022, a 51% decline.


## 8. Refund Risk — MacBook Air Is the Highest-Risk Product

<img width="1237" height="1113" alt="Refund Risk" src="https://github.com/user-attachments/assets/2fef0da6-e6b7-452a-9d5b-3759d0fa5710" />


- MacBook Air sits in the top-right danger quadrant — high revenue ($6.3M) and 11.4% refund rate — both above average.
- ThinkPad is borderline at 11.8% refund rate but lower revenue limits the total dollar impact.
- Gaming Monitor and AirPods are healthy — high revenue, refund rates near or below the 5.8% average.
- Samsung accessories are low priority on both dimensions — low revenue and near-zero refund rates.
- Apple iPhone sits in the Investigate quadrant — 7.6% refund rate with low order count and underperforming revenue.



# Recommendations
## Sales & Revenue (Finance, Executive Leadership)

- Investigate the 2022 decline by channel and product before setting future targets
- Use $586K monthly average as the ongoing performance benchmark
- Do not use 2020 as a baseline for forecasting — treat it as a pandemic anomaly

## Product (Merchandising, Inventory)

- Prioritize inventory and marketing for Gaming Monitor and AirPods — 61% of revenue
- Urgently investigate MacBook Air refund root cause — 11.4% rate at $6.3M revenue is costly
- Review Apple iPhone for potential removal — high refund rate, low volume, underperforming revenue

## Loyalty Program (Customer Retention, Marketing)

- Keep and expand the loyalty program — it is the only metric growing as demand softens
- Redesign offers to incentivize higher-value purchases and close the $34 AOV gap vs non-loyalty members

## Marketing (Growth, Marketing)

- Double down on direct and email — they drive 95% of revenue and are proven performers
- Audit affiliate and social media by AOV and refund rate, not just revenue, before cutting or expanding

## Regional (Sales, International)

- Investigate LATAM performance — consistently the lowest region at under $0.6M annually, warranting a cost-benefit review
- Consider region-specific promotions for APAC and LATAM to close the gap with NA and EMEA

## Refunds (Operations, Customer Support)

- Investigate MacBook Air and ThinkPad return root causes — product descriptions, shipping, quality
- Recover 2022 refund data before making any refund-based business decisions



# Tools Used
- Microsoft Excel - Data cleaning, pivot table analysis, initial exploration
- BigQuery - SQL querying, data extraction, aggregation, and analysis
- Tableau - Dashboard creation, visual analytics, Tableau Story
- GitHub - Project documentation and portfolio presentation
