# 🧠 Advanced SQL Challenges

This project presents a curated collection of advanced SQL queries and exercises aimed at solving real-world business questions. It showcases Felipe's ability to design performant joins, leverage analytic functions, and build logic-rich queries using a star schema model.

---

## 🎯 Business Context

Companies rely on advanced SQL to uncover operational inefficiencies, customer trends, and financial anomalies. These queries replicate scenarios faced by analytics engineers, data analysts, and BI developers working with star schemas and large datasets.

---

## 🧰 Tech Stack

- **SQL**: Window functions, CTEs, aggregation, filtering
- **Star Schema Modeling**: Dimension and fact tables
- **PostgreSQL / SQLite / T-SQL**: Compatible syntax
- **Git & GitHub**: Version control and code review

---

## 📂 Project Structure

```
advanced-sql-challenges/
├── datasets/
│   ├── customers.csv
│   ├── orders.csv
│   └── products.csv
├── solutions/
│   ├── challenge_01_top_customers.sql
│   ├── ...
│   └── challenge_10_rfm_analysis.sql
├── notebooks/
│   └── run_queries_duckdb.ipynb
└── README.md
```

---

## ✨ Key Features

- Business-oriented query challenges
- Realistic dataset simulations (CSV format)
- Focus on performance and readability
- Great for interview prep or upskilling
- Easy to plug into a database (PostgreSQL, MySQL, etc.)

---

## 📊 Example Scenarios

> These queries are written and tested against mock retail data.

- **Top 3 Products by Revenue**  
- **Sales by Region**  
- **Weekend vs Weekday Revenue Analysis**  
- **Monthly Sales Trend**  
- **Profit Margin by Store** *(requires cost data)*  
- **Customer Lifetime Value (CLTV)** *(extendable)*

---

## 🧪 Challenge Index

Each challenge focuses on a common business question using SQL over a star schema:

| # | Challenge | Description |
|--:|-----------|-------------|
| 01 | [Top Customers](./solutions/challenge_01_top_customers.sql) | Find top 5 customers by revenue |
| 02 | [Monthly Growth](./solutions/challenge_02_monthly_growth.sql) | Calculate MoM revenue growth |
| 03 | [Best-Selling Products](./solutions/challenge_03_best_selling_products.sql) | Products ranked by revenue |
| 04 | [Region Sales Share](./solutions/challenge_04_region_sales_share.sql) | Revenue share by region |
| 05 | [Repeat vs New Customers](./solutions/challenge_05_repeat_vs_new_customers.sql) | Repeat customer analysis |
| 06 | [Product Popularity Index](./solutions/challenge_06_product_popularity_index.sql) | Orders per customer-product pair |
| 07 | [Customer LTV](./solutions/challenge_07_customer_ltv.sql) | Estimate customer lifetime value |
| 08 | [Order Frequency by Region](./solutions/challenge_08_order_frequency_by_region.sql) | Avg. orders per customer by region |
| 09 | [Top Months by Volume](./solutions/challenge_09_top_months_by_volume.sql) | Highest order count by month |
| 10 | [RFM Analysis](./solutions/challenge_10_rfm_analysis.sql) | Recency, Frequency, Monetary profile |

---

## 🏃‍♂️ How to Run This Project

You can run these queries in any SQL engine, or directly from a lightweight engine like **SQLite** or **DuckDB**.

---

### 🦆 Option 1: DuckDB (recommended)

1. **Install DuckDB**  
   👉 https://duckdb.org/docs/installation

2. **Launch interactive mode**
   ```bash
   duckdb
   ```

3. **Load CSVs and run a query**
   ```sql
   CREATE TABLE orders AS 
   SELECT * FROM 'datasets/orders.csv' (AUTO_DETECT TRUE);

   SELECT * FROM orders LIMIT 5;
   ```

> 🧠 DuckDB supports CSVs directly and includes analytical functions like `LAG()` and `DATE_TRUNC()` used in this project.

---

### 🗂 Option 2: SQLite (if preferred)

1. **Install SQLite**  
   👉 https://sqlite.org/download.html

2. **Convert CSVs to tables**  
   Use `.import` command or open files with any SQL editor like DB Browser for SQLite.

---

## 🏅 Author & Certifications

**Felipe Castro**  
Analytics Engineer @ EPAM Systems

**Felipe Castro**  
Analytics Engineer @ EPAM Systems  

📜 [PL-300: Power BI Data Analyst](https://learn.microsoft.com/api/credentials/share/en-us/FelipeCastro-8026/F853AABE365874B3?sharingId=13D660F56C1DFFA3)  
📜 [DP-600: Fabric Analytics Engineer](https://learn.microsoft.com/api/credentials/share/en-us/FelipeCastro-8026/6C5A2F5A8A5864FC?sharingId=13D660F56C1DFFA3)  
📜 [DP-700: Fabric Data Engineer](https://learn.microsoft.com/api/credentials/share/en-us/FelipeCastro-8026/96572499DF943EBC?sharingId=13D660F56C1DFFA3)
