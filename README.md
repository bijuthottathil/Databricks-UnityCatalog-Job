# DatabricksUnityCatalog

![image](https://github.com/user-attachments/assets/7a872315-446b-48b2-bda2-99223fa691cd)

Before we start with this workflow using Unity Catalog

We need to create ADLS storage account in Azure to use it as external storage in Databricks

![image](https://github.com/user-attachments/assets/6d12ad05-4792-425b-9b6d-24171792516f)

Create 3 containers bronze,silver and gold in this storage

![image](https://github.com/user-attachments/assets/c8f76c36-b1b3-404f-9c4d-1cc5d0b5af8f)

Next step is to create Access Connector for Databricks in Azure

![image](https://github.com/user-attachments/assets/a9d49511-30b0-4b18-b292-08a4b6d3e49d)

Provide access to ADLS storage using this access connector using Manage Identity

![image](https://github.com/user-attachments/assets/1a7db419-0edf-445f-8e42-37369b5be5c3)

Choose the access connector we earlier created here 

![image](https://github.com/user-attachments/assets/13602cef-0bb3-4161-9ada-b3617a3c996a)

Next navigate to Databricks and create storage credentials and set external locations and point to ADLS storage we created in Azure









