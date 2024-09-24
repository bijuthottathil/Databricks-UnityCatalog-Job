-- Databricks notebook source
-- MAGIC %md
-- MAGIC ### Create managed tables in Silver Schema
-- MAGIC 1. drivers
-- MAGIC 2. results
-- MAGIC

-- COMMAND ----------

use formula1_dev.silver;
drop table if exists formula1_dev.silver.drivers;
create table if not exists formula1_dev.silver.drivers
AS
select 
driverId as driver_id,
driverRef as driver_ref,
number,
code,
concat(name.forename,' ' , name.surname) As name,
dob,
nationality,
current_timestamp() as ingestion_date
 from formula1_dev.bronze.drivers

-- COMMAND ----------


drop table if exists formula1_dev.silver.results;
create table if not exists formula1_dev.silver.results
AS
select 
resultId as result_id,
raceId  as race_id,
driverId as driver_id,
constructorId as constructor_id ,
number ,
grid ,
position ,
positionText as position_text,
positionOrder as position_order,
points ,
laps ,
time ,
milliseconds ,
fastestLap as fastest_lap,
rank ,
fastestLapTime as fastest_lap_time,
fastestLapSpeed as fastest_lap_speed,
statusId as status_id,
current_timestamp() as ingestion_date
 from formula1_dev.bronze.results
