RFM Customer Segmentation (2011)
Using Python & SQL

Project Overview
This project performs RFM (Recency, Frequency, Monetary) customer segmentation on an online retail dataset, scoped exclusively to the year 2011.
The goal is to move away from a one-size-fits-all marketing strategy and enable data-driven customer targeting based on purchasing behavior.
By analyzing customer transactions from 2011, the project identifies high-value customers, at-risk customers, and growth opportunities, providing actionable insights for improving retention and marketing ROI.


Business Problem
The retail business faced several challenges:
Inefficient Marketing Spend
All customers were treated equally, regardless of value or engagement level.
Low Customer Retention
Many customers made only one purchase and never returned.
Lack of Customer Prioritization
The business could not clearly identify which customers drove the majority of revenue.

Solution
Use RFM Analysis to segment customers based on:
Recency – how recently they purchased
Frequency – how often they purchased
Monetary Value – how much they spent
This enables personalized marketing strategies instead of generic campaigns.


Data Scope & Assumptions
Dataset: Online Retail II
Time Period Considered: January 2011 – December 2011 only
Cancellations Removed: Invoices starting with "C" excluded
Returns Removed: Quantity ≤ 0 excluded
Only Valid Customers: Rows with missing CustomerID removed

Scoping to a single year ensures:
Accurate KPI computation
Valid RFM scoring
Meaningful cohort retention analysis

📈 Key Performance Indicators (KPIs) Analyzed
The following KPIs were computed on the 2011 dataset:
Total Revenue
Average Order Value (AOV)
Average Purchase Frequency
Simplified Customer Lifetime Value (CLV)
New Customer Acquisitions (2011)
Cohort Retention Rate
Customer Count per RFM Segment
Revenue Contribution per RFM Segment

📊 KPI Results (2011)
🔹 Business Health Metrics
KPI	Value
Total Revenue	£8.32 Million
Average Order Value (AOV)	£485
Average Purchase Frequency	4.06 purchases/customer
Customer Lifetime Value (CLV)	£1,971
New Customers Acquired (2011)	4,220

🧮 RFM Segmentation Logic
Customers were scored using quintiles (1–5) for each dimension:
Recency Score: Lower days since last purchase → higher score
Frequency Score: More purchases → higher score
Monetary Score: Higher spend → higher score
The three scores were combined to form the RFM Score, which was then mapped to customer segments such as:
Champions
Loyal Customers
Potential Loyalists
At Risk
Hibernating
Others

💰 Revenue Concentration Insight
A key outcome of the analysis:
A small percentage of customers contributes a disproportionately large share of total revenue, confirming the importance of retention-focused strategies.
High-value segments (Champions and Loyal Customers) account for the majority of revenue, while a significant portion of customers fall into low-engagement or at-risk segments.

📉 Cohort Retention Analysis
Cohort analysis was performed using monthly customer cohorts in 2011.
Key Findings:
Strong initial acquisition of customers
Sharp drop in retention after the first purchase
Limited repeat engagement across cohorts
This validates the RFM results showing many customers in At Risk and Hibernating segments.

🔍 Key Insights
Revenue is highly concentrated among a small group of repeat, high-value customers
Customer churn risk is significant, especially after the first purchase
Low purchase frequency across most customers presents a clear growth opportunity

🎯 Business Recommendations
🏆 Retain High-Value Customers
Create VIP or loyalty programs for Champions
Offer personalized rewards and early access
🔄 Re-engage At-Risk Customers
Launch targeted win-back campaigns
Use past purchase behavior for personalized offers
🌱 Nurture New & Potential Loyalists
Encourage second and third purchases through onboarding campaigns
Convert one-time buyers into repeat customers

🛠️ Tech Stack
Python: Pandas, NumPy, Matplotlib, Seaborn
SQL (SQLite): RFM aggregation logic in external .sql file
Jupyter Notebook: Analysis, KPIs, visualizations
Cohort & RFM Analysis
