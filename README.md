# Data Engineering Pipeline with dbt, Snowflake & Airflow

![Python](https://img.shields.io/badge/Python-3.9+-blue.svg)
![Airflow](https://img.shields.io/badge/Airflow-Orchestration-orange.svg)
![dbt](https://img.shields.io/badge/dbt-Data%20Transformation-red.svg)
![Snowflake](https://img.shields.io/badge/Snowflake-Cloud%20Warehouse-lightblue.svg)

---

## 📌 Overview
This project demonstrates a **modern data engineering pipeline** combining:
- **dbt (Data Build Tool)** for modular SQL transformations
- **Snowflake** as the cloud data warehouse
- **Apache Airflow** for workflow orchestration and scheduling
- **Python** for scripting, automation, and custom logic

It covers **data ingestion → transformation → testing → scheduling**, following best practices for scalability and maintainability.

---

## ⚙️ Tech Stack
- **dbt Core** – SQL-based transformations and modeling
- **Snowflake** – Cloud data warehouse
- **Apache Airflow** – Workflow orchestration
- **Python 3.9+** – Scripts and automation
- **Git** – Version control

---


## Project Structure  
```bash
 snowflake_data_project/
│──  models/                 # dbt models (staging, marts)
│──  dags/                   # Airflow DAGs (for scheduling)
│──  logs/                   # Airflow logs
│──  seeds/                  # Sample seed data for dbt
│──  macros/                 # dbt macros
│──  dbt_project.yml         # dbt project config file
│──  README.md               # Project documentation
```



---

## 🚀 Setup & Installation

### 1️⃣ Clone the Repository
```sh
git clone https://github.com/OSA-EL/Applying-ETL-Using-Python_dbt_Airflow_snowflake.git
cd Applying-ETL-Using-Python_dbt_Airflow_snowflake
```


### 2️⃣ Create a Virtual Environment
```sh
python -m venv venv
# Activate it
source venv/bin/activate   # Mac/Linux
venv\Scripts\activate      # Windows
```

### 3️⃣ Configure dbt with Snowflake

Update profiles.yml (usually in ~/.dbt/) with your Snowflake credentials:
```sh
snowflake_project:
  outputs:
    dev:
      type: snowflake
      account: <your_snowflake_account>
      user: dbt_user
      password: <your_password>
      role: ACCOUNTADMIN
      database: finance_db
      warehouse: finance_wh
      schema: raw
  target: dev
```

### 4️⃣ Run dbt Models

```sh
dbt run        # Build models
dbt test       # Run data quality tests
```


### 5️⃣ Start Apache Airflow
airflow standalone


Open the Airflow UI at http://localhost:8080.

### ✅ Future Improvements

- Add CI/CD integration with GitHub Actions
- Implement dbt docs site for data lineage
- Add unit tests for Airflow DAGs
- Extend to include a streaming ingestion layer (Kafka/Spark)


