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

Next navigate to Databricks and set external locations and point to ADLS storage we created in Azure. Using notebook we can achieve that

Create a folder in Databricks and add new notebook

![image](https://github.com/user-attachments/assets/0f9ab716-2235-4f28-9f03-5fe5fc62ed69)


Created external locations 

![image](https://github.com/user-attachments/assets/748f9619-6514-4540-a6aa-7d0809b82948)

![image](https://github.com/user-attachments/assets/f0ef25a7-7b3a-4a78-a3f2-f64e9ae308d0)

External locations for Bronze,Silver and Gold are created

![image](https://github.com/user-attachments/assets/369a462b-74dd-4de3-a35c-016ef9d4d063)


Next we will create new unity catalog and schemas

![image](https://github.com/user-attachments/assets/2cda0c8b-47d8-4a19-9704-e87951f98551)

We will use external tables for Bronze layer and managed tables for Silver and Gold. But schema will defined in managed locations


From UI, I created a unity catalog pointing to store container in external storage

![image](https://github.com/user-attachments/assets/f2ce85e2-5b4c-4dc6-a77e-1e36206c14bb)


![image](https://github.com/user-attachments/assets/7557f1c5-8b26-4aa5-bf5b-df0225e6466c)


Bronze schema is created in external location

![image](https://github.com/user-attachments/assets/c963da09-3483-4d8a-9a7b-03d35422f1bd)

Now you can see Bronze folder under catalog

![image](https://github.com/user-attachments/assets/77f893cc-f17f-49ae-ad75-d1cfcab5a87d)

To see details

![image](https://github.com/user-attachments/assets/ab106137-fb78-4e0b-a941-97b4f4dc5afa)


Created other schemas too


![image](https://github.com/user-attachments/assets/6ef9cc04-fe2c-4746-a475-65ef8116112c)











