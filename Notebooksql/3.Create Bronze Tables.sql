-- Databricks notebook source
-- MAGIC %md
-- MAGIC ## Create Bronze Tables
-- MAGIC 1. Drivers.json
-- MAGIC 2. Results.json
-- MAGIC 3. Mount path abfss://bronze@adlsstorageextenal.dfs.core.windows.net/

-- COMMAND ----------

DROP TABLE IF  EXISTS formula1_dev.bronze.drivers;

CREATE TABLE IF NOT EXISTS formula1_dev.bronze.drivers
(driverId INT,
driverRef STRING,
number INT,
code STRING,
name STRUCT<forename: STRING, surname: STRING>,
dob DATE,
nationality STRING,
url STRING)
using json
options (path "abfss://bronze@adlsstorageextenal.dfs.core.windows.net/drivers.json");

-- COMMAND ----------

DROP TABLE IF  EXISTS formula1_dev.bronze.results;

CREATE TABLE IF NOT EXISTS formula1_dev.bronze.results
(resultId INT,
raceId INT,
driverId INT,
constructorId INT,
number INT,
grid INT,
position INT,
positionText STRING,
positionOrder INT,
points INT,
laps INT,
time STRING,
milliseconds INT,
fastestLap INT,
rank INT,
fastestLapTime STRING,
fastestLapSpeed FLOAT,
statusId STRING
)
USING JSON 
OPTIONS (path "abfss://bronze@adlsstorageextenal.dfs.core.windows.net/results.json");

