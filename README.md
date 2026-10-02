# Hospital Patient, Billing & Operations Analytics

A healthcare data analytics portfolio project using **MySQL, SQL, Excel/CSV, and Power BI** to analyze hospital patient visits, billing, departments, doctors, procedures, and pharmacy data.

## Project Overview

This project demonstrates how healthcare data can be organized, analyzed, and converted into useful business insights.

The workflow followed in this project was:

**Healthcare Data → SQL Database → Data Analysis → KPIs → Power BI Dashboard → Business Insights**

## Business Objectives

* Analyze total patient and visit volumes
* Compare OPD and IPD visits
* Analyze department-wise activity
* Analyze doctor-wise visits
* Analyze hospital revenue and billing
* Analyze monthly revenue trends
* Review procedure and pharmacy data
* Create healthcare KPIs and an interactive dashboard
* Support data-driven healthcare decision-making

## Tools & Technologies

* **MySQL**
* **MySQL Workbench**
* **SQL**
* **Microsoft Power BI**
* **Microsoft Excel / CSV**
* **GitHub**

## Database Tables

The project contains seven related tables:

1. `departments`
2. `doctors`
3. `patients`
4. `visits`
5. `billing`
6. `procedures`
7. `pharmacy_sales`

The tables are connected using primary keys and foreign keys to maintain relationships between patients, visits, doctors, departments, billing, procedures, and pharmacy transactions.

## SQL Analysis

SQL was used for:

* Data retrieval and filtering
* Aggregation using `COUNT`, `SUM`, and `AVG`
* `GROUP BY`, `HAVING`, and `ORDER BY`
* Joining multiple healthcare tables
* Patient and visit analysis
* OPD vs IPD analysis
* Department-wise analysis
* Doctor-wise activity analysis
* Billing and revenue analysis
* Insurance vs patient payment analysis
* Procedure analysis
* Pharmacy sales analysis
* Monthly analysis
* Data quality checks

## Power BI Dashboard

The Power BI dashboard provides an interactive view of hospital operations and financial performance.

### Dashboard Components

* Total Patients
* Total Visits
* Total Revenue
* Average Bill
* OPD vs IPD Visits
* Revenue by Department
* Monthly Revenue Trend
* Visits by Department
* Doctor Visits
* Visit Type slicer
* Department slicer

## Key Dataset Metrics

| Metric         |       Value |
| -------------- | ----------: |
| Total Patients |          30 |
| Total Visits   |          50 |
| OPD Visits     |          36 |
| IPD Visits     |          14 |
| OPD Share      |         72% |
| IPD Share      |         28% |
| Total Revenue  | ₹96,660,000 |

## Business Insights

* The dataset contains 50 hospital visits, including 36 OPD visits and 14 IPD visits.
* OPD visits represent 72% of the total visits in the dataset.
* Total revenue in the dataset is ₹96,660,000.
* Department-wise visits and revenue were analyzed to understand activity across departments.
* Doctor-wise visit analysis was performed to understand workload and activity.
* Patient, visit, billing, procedure, and pharmacy data were brought together for a broader view of hospital operations.

## Business Recommendations

* Monitor OPD and IPD volumes regularly.
* Track department-wise visits and revenue.
* Monitor monthly revenue trends.
* Review doctor-wise activity for workload analysis.
* Monitor billing and payment information.
* Integrate additional healthcare data sources for deeper analysis.
* Use dashboards to support regular operational and management reporting.

## Project Structure

```text
Hospital_Healthcare_Analytics
│
├── SQL
│   ├── 01_create_database.sql
│   ├── 02_create_tables.sql
│   ├── 03_insert_data.sql
│   ├── 04_basic_analysis.sql
│   └── 05_advanced_analysis.sql
│
├── Data
│   └── README.md
│
├── PowerBI
│   └── Hospital_Analytics.pbix
│
└── Documentation
    └── Hospital_Analytics_Project_Documentation.docx
```

## Skills Demonstrated

* Healthcare Data Analytics
* SQL
* MySQL
* Data Cleaning and Data Quality
* Data Analysis
* KPI Development
* Power BI
* Dashboard Development
* Excel
* Healthcare Business Analysis
* Business Reporting
* Data-driven Decision Making

## Project Purpose

This project was created as a practical healthcare analytics portfolio project to demonstrate the ability to work with structured healthcare data, perform analysis using SQL, build interactive dashboards using Power BI, and communicate business insights.
