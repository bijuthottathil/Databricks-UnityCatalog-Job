-- Databricks notebook source
-- MAGIC %md
-- MAGIC ## Create Catalog and schemas
-- MAGIC 1. Create catalog named formula1_dev
-- MAGIC 2. Schemas bronze,silver and gold

-- COMMAND ----------

USE CATALOG formula1_dev


-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS bronze
MANAGED LOCATION "abfss://bronze@adlsstorageextenal.dfs.core.windows.net/"

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS silver
MANAGED LOCATION "abfss://silver@adlsstorageextenal.dfs.core.windows.net/"

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS gold
MANAGED LOCATION "abfss://gold@adlsstorageextenal.dfs.core.windows.net/"

-- COMMAND ----------

show schemas
