# ✈️ Airline Data Analysis & Operations Dashboard

<p align="center">
  <b>Transforming Flight Data into Actionable Business Insights</b>
  <br>
  An End-to-End Data Analytics Project using Python, PostgreSQL, SQL and Power BI.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Python-Data%20Analysis-blue?logo=python" />
  <img src="https://img.shields.io/badge/PostgreSQL-Database-336791?logo=postgresql" />
  <img src="https://img.shields.io/badge/SQL-Analytics-orange?logo=postgresql" />
  <img src="https://img.shields.io/badge/Power%20BI-Dashboard-yellow?logo=powerbi" />
  <img src="https://img.shields.io/badge/Jupyter-Notebook-orange?logo=jupyter" />
</p>

---

## 📌 About The Project

The **Airline Data Analysis & Operations Dashboard** is an end-to-end data analytics project focused on understanding airline operations, flight delays, cancellation patterns, and overall operational performance.

The project processes airline datasets using Python, stores and analyzes structured data using PostgreSQL, performs advanced analytical queries using SQL, and presents meaningful insights through interactive Power BI dashboards.

The main objective is to identify patterns in flight delays, understand their contributing factors, compare airline performance, and analyze operational trends to support data-driven decision-making.

### 🎯 Project Objectives

- Analyze overall airline operational performance.
- Identify airlines with higher flight delay rates.
- Analyze airport-wise flight traffic and delay percentages.
- Understand the major causes of flight delays.
- Examine monthly and day-wise delay trends.
- Analyze flight cancellation reasons.
- Build interactive dashboards for better visualization.

---

## 🛠️ Tech Stack

| Technology | Usage |
|---|---|
| Python | Data cleaning and preprocessing |
| Pandas | Data manipulation and analysis |
| NumPy | Numerical operations |
| Jupyter Notebook | Exploratory Data Analysis |
| PostgreSQL | Relational database management |
| SQL | Advanced data analysis |
| pgAdmin 4 | Database administration |
| Power BI | Interactive dashboard development |
| Git & GitHub | Version control and project hosting |

---

## 📂 Project Structure

```text
airline-operations-analytics/
│
├── data/
│   ├── raw/
│   │   ├── airlines.csv
│   │   ├── airports.csv
│   │   ├── flights_subset.csv
│   │   └── flights.csv (not included)
│   │
│   └── processed/
│       └── flights_clean.csv (generated file)
│
├── notebooks/
│   ├── 01_explore.ipynb
│   ├── 02_load_postgres.ipynb
│   │
│   └── sql/
│       ├── schema.sql
│       └── queries.sql
│
├── powerbi/
│   └── airline_dashboard.pbix
│
├── screenshots/
│   ├── airline_operations.png
│   ├── flight_analysis.png
│   └── passenger_satisfaction.png
│
├── requirements.txt
├── .gitignore
└── README.md
```

---

## 📊 Dashboard Preview

The Power BI report contains three dashboard pages designed to explore different aspects of airline operations.

### 1. Airline Operations & Flight Delay Analysis

Provides an overview of airline performance, flight delays, cancellation rates, and monthly delay trends.

![Airline Operations Dashboard](screenshots/airline_operations.png)

### 2. Flight Analysis Dashboard

Explores flight operational metrics, airline performance, and delay-related patterns.

![Flight Analysis Dashboard](screenshots/flight_analysis.png)

### 3. Passenger Satisfaction Dashboard

Presents passenger satisfaction-related metrics and visual insights.

![Passenger Satisfaction Dashboard](screenshots/passenger_satisfaction.png)

---

## 🔍 SQL Analysis

PostgreSQL is used to perform analytical queries and extract meaningful insights from the flight database.

### Key Analysis Performed

| # | Analysis | Description |
|---|---|---|
| 1 | Airline Performance | Airline-wise delay rates and average arrival delays |
| 2 | Airport Analysis | Busiest origin airports and delay percentages |
| 3 | Cancellation Analysis | Flight cancellation reasons and percentage share |
| 4 | Monthly Airline Ranking | Ranking airlines using window functions |
| 5 | Monthly Trend Analysis | Month-over-month delay rate comparison |
| 6 | Delay Cause Analysis | Airline, weather, security, air system and late aircraft delays |
| 7 | Hourly Analysis | Flight delay rates by scheduled departure hour |
| 8 | Day-wise Analysis | Flight delay patterns across weekdays |

### SQL Concepts Used

- SELECT, WHERE and ORDER BY
- GROUP BY and Aggregate Functions
- INNER JOIN
- UNION ALL
- Common Table Expressions (CTEs)
- Window Functions
- RANK()
- LAG()
- Subqueries

All SQL queries are available in:

`notebooks/sql/queries.sql`

Database table definitions are available in:

`notebooks/sql/schema.sql`

---

# 🚀 Getting Started – Run the Project Locally

Follow the steps below to set up and execute the project on your local machine.

## 1. Prerequisites

Install the following software before starting:

| Software | Requirement |
|---|---|
| Python | 3.10 or above |
| PostgreSQL | Database server |
| pgAdmin 4 | Database interface |
| Jupyter Notebook | Notebook execution |
| Power BI Desktop | Dashboard visualization |
| Git | Repository cloning |

## 2. Clone the Repository

Open Command Prompt or VS Code Terminal.

Execute:

```bash
git clone https://github.com/K210605/airline-operations-analytics.git
```

Navigate into the project directory:

```bash
cd airline-operations-analytics
```

## 3. Create Python Virtual Environment

Create a virtual environment:

```bash
python -m venv venv
```

Activate it on Windows:

```bash
venv\Scripts\activate
```

Install the required Python libraries:

```bash
pip install -r requirements.txt
```

## 4. Dataset Setup

The project uses three main datasets:

- `airlines.csv` – Contains airline information.
- `airports.csv` – Contains airport names and location information.
- `flights_subset.csv` – Sample flight records for analysis.

The datasets are located inside:

```text
data/raw/
```

**Note:** The complete `flights.csv` dataset is not included in this repository because it exceeds GitHub's file-size limit. The processed `flights_clean.csv` is also excluded. The included sample dataset can be used for testing and learning.

For full-scale analysis, place the original flight dataset inside `data/raw/` and follow the preprocessing notebook.

## 5. Run Data Exploration & Preprocessing

Start Jupyter Notebook:

```bash
jupyter notebook
```

Open:

`notebooks/01_explore.ipynb`

Execute the notebook cells sequentially.

This notebook covers:

- Loading airline datasets.
- Understanding dataset structure.
- Exploring missing values.
- Data cleaning and preprocessing.
- Exploratory Data Analysis.
- Preparing processed data for further analysis.

## 6. PostgreSQL Database Configuration

### Step 1: Create Database

Open pgAdmin 4 and create a database named:

`airline_ops`

Alternatively, execute:

```sql
CREATE DATABASE airline_ops;
```

### Step 2: Create Database Tables

Connect to the `airline_ops` database.

Open:

`notebooks/sql/schema.sql`

Execute the complete SQL script.

It creates three tables:

- airlines
- airports
- flights

### Step 3: Load Data into PostgreSQL

Open:

`notebooks/02_load_postgres.ipynb`

Configure the PostgreSQL connection details according to your local environment.

Execute the notebook cells to load the datasets into PostgreSQL.

**Important:** Ensure that the database, schema and required CSV files are available before executing the data-loading notebook.

## 7. Execute SQL Queries

After loading the datasets successfully:

1. Open pgAdmin 4.
2. Connect to the `airline_ops` database.
3. Open Query Tool.
4. Open `notebooks/sql/queries.sql`.
5. Copy and execute the required queries.

The SQL scripts generate insights related to airline performance, airport traffic, delay causes, cancellations, and operational trends.

## 8. Open Power BI Dashboard

Navigate to:

`powerbi/airline_dashboard.pbix`

Open the file using Power BI Desktop.

If prompted for data source credentials:

1. Configure the PostgreSQL or original data source used by the report.
2. Update the connection details.
3. Refresh the dataset.
4. Navigate through the dashboard pages.

The dashboard presents the analytical results through interactive visualizations, charts, filters, and performance indicators.

---

## 📈 Key Performance Indicators

The project focuses on the following operational metrics:

| KPI | Description |
|---|---|
| Total Flights | Total number of flight records |
| Delay Rate % | Percentage of delayed flights |
| Cancellation Rate | Percentage of cancelled flights |
| Average Arrival Delay | Average arrival delay in minutes |
| Airline Delay Rate | Delay percentage by airline |
| Airport Flight Volume | Number of flights by origin airport |

---

## 💡 Key Learnings

Through this project, I gained practical experience in:

- End-to-end data analytics workflows.
- Data cleaning and preprocessing with Python.
- Exploratory Data Analysis using Pandas and NumPy.
- Relational database design using PostgreSQL.
- Writing advanced SQL queries.
- Applying joins and window functions.
- Developing interactive Power BI dashboards.
- Extracting business insights from real-world datasets.
- Managing projects using Git and GitHub.

---

## 🔮 Future Enhancements

- Integrate machine learning models for flight delay prediction.
- Add real-time flight data integration.
- Expand airline performance comparisons.
- Develop more advanced operational dashboards.

---

## 👩‍💻 Author

**Khushi Sehgal**

B.Tech – Computer Science & Engineering  
Specialization: Cybersecurity & Privacy

- GitHub: [K210605](https://github.com/K210605)
- LinkedIn: [Khushi Sehgal](https://www.linkedin.com/in/khushi-sehgal-72a9aa286/)

---

<p align="center">
  <b>⭐ If you find this project useful, don't forget to give it a star!</b>
  <br><br>
  Built with Python, PostgreSQL, SQL & Power BI.
  <br>
 by Khushi Sehgal
</p>