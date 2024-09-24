-- Databricks notebook source
-- MAGIC %md
-- MAGIC ### Create external locations
-- MAGIC 1. Bronze
-- MAGIC 2. Silver
-- MAGIC 3. Gold

-- COMMAND ----------

CREATE EXTERNAL LOCATION databricksextdl_bronze
URL 'abfss://bronze@adlsstorageextenal.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL `extcredentailsfordbk`)


-- COMMAND ----------

Desc EXTERNAL LOCATION databricksextdl_bronze

-- COMMAND ----------

CREATE EXTERNAL LOCATION databricksextdl_silver
URL 'abfss://silver@adlsstorageextenal.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL `extcredentailsfordbk`)


-- COMMAND ----------

CREATE EXTERNAL LOCATION databricksextdl_gold
URL 'abfss://gold@adlsstorageextenal.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL `extcredentailsfordbk`)


-- COMMAND ----------

CREATE EXTERNAL LOCATION databricksextdl_store
URL 'abfss://store@adlsstorageextenal.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL `extcredentailsfordbk`)
