# ✈️ Airline Data Analysis & Operations Dashboard

## Project Overview
This project focuses on analyzing airline operational data to identify flight delays, understand their causes, and generate meaningful business insights using Python, PostgreSQL, SQL, and Power BI.

## Technologies Used
- Python
- Pandas
- NumPy
- Jupyter Notebook
- PostgreSQL
- pgAdmin 4
- SQL
- Power BI
- Data Visualization

## Project Structure

```text
airline-dashboard/
├── data/
│   ├── raw/
│   │   ├── airlines.csv
│   │   ├── airports.csv
│   │   ├── flights.csv
│   │   └── flights_subset.csv
│   └── processed/
│       └── flights_clean.csv
├── notebooks/
│   ├── 01_explore.ipynb
│   ├── 02_load_postgres.ipynb
│   └── sql/
│       └── queries.sql
├── powerbi/
├── screenshots/
├── README.md
├── requirements.txt
└── .gitignore
```

## Key Activities

1. Explored airline datasets using Python and Pandas.
2. Performed data cleaning and preprocessing.
3. Loaded structured airline data into PostgreSQL.
4. Executed SQL queries to analyze different flight delay causes.
5. Analyzed airline, weather, security, and late aircraft delays.
6. Developed interactive Power BI visualizations for data analysis.

## SQL Analysis

The project examines:
- Airline delays
- Late aircraft delays
- Air system delays
- Weather-related delays
- Security-related delays

## Key Insights

The SQL analysis compares the total delay minutes associated with different operational causes to identify major contributors to flight delays.

## How to Run

1. Clone this repository.
2. Install dependencies using:

```bash
pip install -r requirements.txt
```

3. Open the Jupyter notebooks.
4. Configure your PostgreSQL connection.
5. Execute the SQL queries in pgAdmin.
6. Open the Power BI dashboard if included in the repository.

## Future Improvements

- Build predictive models for flight delays.
- Add airline performance comparisons.
- Develop advanced interactive dashboards.
- Automate data ingestion and reporting.

## Author

Khushi Sehgal