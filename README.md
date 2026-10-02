# SQL-Analysis

This repository contains a MySQL-based data analysis project for a training institute. It focuses on candidate enrollment, course participation, payments, certifications, and managerial reporting across multiple relational tables.

The analysis includes:
- 7 relational tables
- raw CSV datasets for import and modeling
- SQL scripts for querying and business analysis
- cleaning and transformation logic for inconsistent values
- 15 business-scenario queries using joins, aggregations, filtering, and NULL handling

## Project Overview

The dataset models the lifecycle of a candidate from registration to course completion and certification. Key areas analyzed include:
- candidate pipeline and opportunity stages
- training/course demand
- installment and payment patterns
- location and manager performance
- certificate issuance and completion trends

## Repository Structure

```text
SQL-Analysis/
├── Data/
│   ├── PQP Cand_course_tbl.csv
│   ├── PQP Candidate table_new - Sheet1.csv
│   ├── PQP Course_table.csv
│   ├── PQP Location_table.csv
│   ├── PQP Maneger_tbl.csv
│   ├── PQP MySQL Cert_tbl - Sheet1.csv
│   └── PQP MySQL Trans_tbl - Sheet1.csv
├── SQL/
│   ├── SQL CODE.sql
│   └── SQL ANALYSIS CODE
├── MANAGER TABLE.sql
├── LICENSE
├── README.md
└── Screenshot/
```

## Data Files

The `Data/` directory contains the source datasets used for this project:

- `PQP Candidate table_new - Sheet1.csv` — candidate demographics and registration details
- `PQP Cand_course_tbl.csv` — candidate-to-course mapping
- `PQP Course_table.csv` — course master data
- `PQP Location_table.csv` — training location reference data
- `PQP Maneger_tbl.csv` — manager or team reference data
- `PQP MySQL Cert_tbl - Sheet1.csv` — certificates issued to candidates
- `PQP MySQL Trans_tbl - Sheet1.csv` — payment and installment transactions

## SQL Scripts

The project includes SQL scripts that demonstrate analysis patterns such as:
- selecting and ordering data
- removing duplicates and checking distinct values
- grouping by opportunity type and training type
- calculating totals and aggregates
- filtering with conditions and HAVING clauses
- joining candidate and transaction data
- summarizing payment and candidate trends

Main script:
- `SQL/SQL CODE.sql`

Additional support script:
- `MANAGER TABLE.sql`

## Typical Business Questions Covered

The project answers questions such as:
- How many candidates are in each opportunity stage?
- Which training types attract the most candidates?
- What is the total first installment collected by promotion code?
- Which courses or regions generate the most revenue?
- Which candidates have completed certificates or are still in progress?
- What is the relationship between candidate status, payment activity, and enrollment?

## Database Setup

1. Import the CSV files into a MySQL database.
2. Create the required tables based on your schema design.
3. Load the data into the corresponding tables.
4. Run the SQL statements from `SQL/SQL CODE.sql` to explore the data and generate analysis outputs.

Example workflow:

```sql
SELECT Opportunity_Type, COUNT(*) AS total_candidates
FROM candidate_table
GROUP BY Opportunity_Type;
```

## Tools Used

- MySQL
- SQL queries
- CSV data import
- Data cleaning and transformation

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## Notes

This repository is intended for SQL practice, portfolio demonstration, and business analysis exploration using realistic training institute data.

