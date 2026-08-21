# Olist E-Commerce SQL Analysis

### End-to-End SQL Analysis of a Brazilian E-Commerce Marketplace

[![SQL](https://img.shields.io/badge/SQL-Analysis-blue)](https://www.sql.org/)
[![DuckDB](https://img.shields.io/badge/DuckDB-Database-yellow)](https://duckdb.org/)
[![DBeaver](https://img.shields.io/badge/DBeaver-IDE-372923)](https://dbeaver.io/)
[![Status](https://img.shields.io/badge/Status-Completed-success)](#)

> An end-to-end SQL analysis of the Olist Brazilian e-commerce dataset, covering data validation, data quality assessment, exploratory analysis, operational performance, customer behavior, product demand, payment activity, seller performance, and business recommendations.

---

## 📌 Project Overview

This project analyzes the Olist Brazilian e-commerce marketplace dataset using SQL to understand how customers, orders, products, payments, reviews, delivery operations, and sellers interact across the marketplace.

The analysis was designed as an end-to-end analytical workflow rather than a collection of isolated SQL queries.

### The project covers:

- Data structure and quality validation
- Missing-value and duplicate checks
- Data-type and logical validation
- Referential integrity
- Customer and geographic analysis
- Order-status analysis
- Customer review analysis
- Delivery performance and delays
- Product-category demand
- Payment methods and payment values
- Additional fees and payment differences
- Seller performance and geographic concentration
- Business findings, insights, and recommendations

The analysis was performed using **DuckDB through DBeaver, with SQL** used throughout the inspection, validation, exploration, and analysis stages.

### 📖 Core objectives

* Validate data quality and relational integrity
* Explore customer, order, product, payment, review, and seller behavior
* Identify operational and commercial patterns
* Translate analytical findings into actionable business recommendations

---

## Key Findings

* **96,478 orders** were recorded as delivered, making delivery the dominant order status.
* Customer activity is highly concentrated geographically, with **São Paulo** representing the largest customer market.
* **Credit card** is the dominant payment method in the dataset.
* `cama_mesa_banho` records the highest order volume among product categories analyzed.
* High order volume does not always translate to the highest monetary contribution.
* Seller activity is concentrated among a relatively small group of high-performing sellers.
* Significant delivery delays were identified, creating potential operational and customer-experience concerns.

For the complete findings, interpretations, and recommendations:

➡️ [Business Findings, Insights & Recommendations](documentation/business_findings_insights_and_recommendations.md)

---

## Analytical Workflow

```text
Data Validation
      ↓
Data Quality Assessment
      ↓
Exploratory Data Analysis
      ↓
Business Findings
      ↓
Recommendations
```

### 01 — Data Validation

Validated:

* Table structures and record counts
* Data types
* Missing values
* Duplicates
* Blank values
* Formatting consistency
* Referential integrity
* Logical data-quality issues

➡️ [View Data Cleaning & Validation](documentation/data_cleaning_and_validation.md)

### 02 — Exploratory Analysis

Analyzed:

* Customer and geographic distribution
* Order status
* Reviews
* Delivery performance
* Product categories
* Payment methods
* Payment values
* Seller performance

➡️ [View Exploratory Data Analysis](documentation/exploration_data_analysis.md)

### 📸 Exploration Process

The following screenshots show some of the SQL-based exploration workflow and analytical process used during the project.

![Exploration Process 1](results/screenshots/01_exploration_screenshots/exploration_process_screenshot_1.png)

![Exploration Process 2](results/screenshots/01_exploration_screenshots/exploration_process_screenshot_2.png)

### 03 — Business Findings

Translated analytical outputs into business implications and recommendations covering:

* Customer concentration
* Delivery performance
* Product demand
* Payment behavior
* Additional fees
* Seller concentration

➡️ [View Business Findings & Recommendations](documentation/business_findings_insights_and_recommendations.md)

---

## 🛠️ Tools & Technologies

| Tool                           | Purpose                                                   |
| ------------------------------ | --------------------------------------------------------- |
| **SQL**                        | Data validation, transformation, exploration and analysis |
| **DuckDB**                     | Analytical database engine                                |
| **DBeaver**                    | SQL development environment                               |
| **Markdown & Microsoft Word**  | Analytical Documentation                                  |

---

## 📁 Repository Structure

```text
Olist-Ecommerce-SQL-Analysis/
│
├── data/
├── sql/
│   ├── 01_data_validation/
│   ├── 02_exploration_analysis/
│   └── ...
│
├── documentation/
│   ├── data_cleaning_and_validation.md
│   ├── exploration_data_analysis.md
│   └── business_findings_insights_and_recommendations.md
│
├── results/
│   └── screenshots/
│
├── assets/
└── README.md
```

---

## 🖥️ SQL Environment

![DBeaver Environment](results/screenshots/03_database_system_shot/1_DBeaver.png)

The project was developed in **DBeaver using DuckDB**, with SQL serving as the primary language throughout the analytical workflow.

---

## 🗃️ Dataset

The project uses the **Olist Brazilian E-Commerce public dataset**, obtained through Kaggle's Olist organization.

🔗 **Dataset source:**
https://www.kaggle.com/organizations/olistbr

The dataset is relational and contains multiple tables representing different parts of the marketplace.

### 📚 Core tables analyzed

| Table                          |   Records |
| ------------------------------ | --------: |
| `customers`                    |    99,441 |
| `geolocation`                  | 1,000,163 |
| `order_items`                  |   112,650 |
| `order_payments`               |   103,886 |
| `order_reviews`                |    99,224 |
| `orders`                       |    99,441 |
| `products`                     |    32,951 |
| `sellers`                      |     3,095 |
| `product_category_translation` |        71 |

These record counts were validated during the data-quality stage.

---

# 🎯 Project Outcome

This project demonstrates an end-to-end SQL workflow:

**Validate → Explore → Interpret → Recommend**

Rather than focusing only on query writing, the analysis connects SQL outputs to operational and commercial questions around:

* Customer behavior
* Geographic concentration
* Order fulfillment
* Customer experience
* Product demand
* Payment behavior
* Seller performance
* Pricing and additional charges

The final output is a documented analytical workflow that translates relational e-commerce data into business-relevant findings and recommendations.

---

# 👨‍💻 Author

### Opeyemi (Ismail) Peter

**Data Analyst | Business Intelligence | SQL | Python | Excel | Tableau**

I enjoy transforming raw and complex datasets into meaningful insights, building analytical solutions, and communicating findings clearly to support data-driven decision-making.

### Connect With Me

* **GitHub:** [Cephasia](https://github.com/Cephasia)
* **LinkedIn:** [Opeyemi Peter](https://www.linkedin.com/in/opeyemi-peter-394b333a1)
* **Email:** [Send me an email](mailto:ismailopeyemi3310@gmail.com?subject=Hello%20Opeyemi%20Peter!)

---

## ⭐ Thank You

Thank you for taking the time to explore this project.

If you find the analysis useful, feel free to explore the SQL queries and supporting documentation throughout the repository.
