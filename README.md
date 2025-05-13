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
├── data/
│ ├── dim_customer.csv
│ ├── dim_date.csv
│ ├── dim_product.csv
│ ├── dim_store.csv
│ └── fact_sales.csv
├── sql/
│ ├── 01_create_star_schema.sql
│ ├── 02_insert_mock_data.sql
│ └── 03_kpi_queries.sql
├── images/ # Query results and schema design screenshots
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

## 🏅 Author & Certifications

**Felipe Castro**  
Analytics Engineer @ EPAM Systems

📜 [PL-300: Power BI Data Analyst](https://learn.microsoft.com/api/credentials/share/en-us/FelipeCastro-8026/F853AABE365874B3?sharingId=13D660F56C1DFFA3)  
📜 [DP-600: Fabric Analytics Engineer](https://learn.microsoft.com/api/credentials/share/en-us/FelipeCastro-8026/6C5A2F5A8A5864FC?sharingId=13D660F56C1DFFA3)

---

## 🧪 How to Run

1. Clone the repo  
2. Open the SQL files in your favorite IDE or DB client  
3. Load `data/*.csv` files into your DB  
4. Run the scripts in order:
   - `01_create_star_schema.sql`
   - `02_insert_mock_data.sql`
   - `03_kpi_queries.sql`

