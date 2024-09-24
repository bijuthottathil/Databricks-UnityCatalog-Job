-- Databricks notebook source
-- MAGIC %md
-- MAGIC ## Create Gold Tables in Delta format
-- MAGIC

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS formula1_dev.gold;
create table if not exists formula1_dev.gold.driver_wins
as
select d.name , count(1) as number_of_wins
from formula1_dev.silver.drivers d join formula1_dev.silver.results r on d.driver_id = r.driver_id
where r.position = 1
group by d.name;

select * from formula1_dev.gold.driver_wins order by number_of_wins desc

-- COMMAND ----------

select * from formula1_dev.gold.driver_wins order by number_of_wins 
