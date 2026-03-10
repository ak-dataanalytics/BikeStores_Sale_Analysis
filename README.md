# 🚲 BikeStores Executive Sales Dashboard

![Dashboard Preview](screenshots/dashboard_preview.png)

## 📌 Project Overview

An end-to-end **sales analytics project** built on the BikeStores relational database. Raw transactional data is extracted using a multi-table SQL query, loaded into Excel, and visualized through an interactive **Executive Sales Dashboard** with slicers, KPI cards, and 7+ chart types.

This project demonstrates a complete data analyst workflow: **SQL → Data Extraction → Excel Dashboard → Business Insights.**

---

## 🛠️ Tools & Technologies

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![Excel](https://img.shields.io/badge/Microsoft%20Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)

- **SQL Server** — Multi-table joins, aggregations, data extraction
- **Microsoft Excel** — Pivot Tables, Pivot Charts, Slicers, Map Charts, KPI Cards

---

## 📊 Dashboard Features

| Section | Description |
|---|---|
| 💰 **KPI Cards** | Total Revenue ($8.58M), Total Units Sold (7,078), Total Customers (4,722) |
| 📅 **Revenue per Year** | Column chart comparing 2016–2018 annual revenue |
| 📈 **Monthly Revenue Trends** | Multi-line chart showing monthly patterns across years |
| 🗺️ **Revenue per State** | Bing-powered map chart (CA, NY, TX) |
| 🥧 **Revenue per Store** | Pie chart with % breakdown across 3 stores |
| 👤 **Top 10 Customers** | Horizontal bar chart ranked by revenue |
| 📦 **Top 10 Products** | Horizontal bar chart ranked by revenue |
| 🏷️ **Revenue per Category** | Bar chart by bike category |
| 🧑‍💼 **Sales by Rep** | Sales representative contribution comparison |

### 🎛️ Interactive Filters (Slicers)
- **Year** — Filter by 2016, 2017, 2018
- **State** — Filter by CA, NY, TX
- **Store** — Filter by Baldwin Bikes, Rowlett Bikes, Santa Cruz Bikes

---

## 💡 Key Business Insights

- 📌 **Baldwin Bikes dominates** with **68% of total revenue** ($5.82M), far ahead of Santa Cruz Bikes (21%) and Rowlett Bikes (11%)
- 📌 **2017 was the peak year** with $3.84M in revenue — a 42% increase over 2016
- 📌 **Revenue declined in 2018** to $2.02M — worth investigating for seasonality or data cutoff
- 📌 **Mountain Bikes** is the top-selling category with $3.03M in revenue
- 📌 **Top customer (Pamela Newman)** contributed $37,802 — the top 3 customers are closely competitive
- 📌 **Marcelene Boyer** leads the sales team with $2.93M in personal sales contributions
- 📌 **Trek Slash 8 27.5 - 2016** is the best-selling product at $615,998

---

## 🗂️ Project Structure

```
BikeStores-Analysis/
├── README.md
├── sql/
│   └── Bike_Store_Analysis.sql       # Multi-table extraction query
├── dashboard/
│   └── BikeStores_Dashboard.xlsx     # Interactive Excel dashboard
└── screenshots/
    └── dashboard_preview.png         # Dashboard preview image
```

---

## ⚙️ How to Run

### Step 1 — Set up the Database
1. Download the **BikeStores sample database** from [sqlservertutorial.net](https://www.sqlservertutorial.net/getting-started/sql-server-sample-database/)
2. Restore it in **SQL Server Management Studio (SSMS)**

### Step 2 — Run the SQL Query
1. Open `sql/Bike_Store_Analysis.sql` in SSMS
2. Execute the query — it will return the flat dataset used by the dashboard

### Step 3 — Refresh the Dashboard
1. Open `dashboard/BikeStores_Dashboard.xlsx`
2. If connected to your local SQL Server: go to **Data → Refresh All**
3. All pivot tables and charts will update automatically

---

## 🗃️ Data Source

**BikeStores Sample Database** — a fictional bicycle retail dataset commonly used for SQL training, provided by [sqlservertutorial.net](https://www.sqlservertutorial.net).

The database includes 9 tables across two schemas:
- `sales` — orders, customers, order_items, stores, staffs
- `production` — products, categories, brands, stocks

---

## 👤 Author

**Aditya Kumar**
- LinkedIn: [linkedin.com/in/xaditya](https://www.linkedin.com/in/xaditya/)

---

⭐ *If you found this project useful, feel free to star the repository!*
