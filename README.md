# Setting up workflow job in DataBricks to store aggregrated results in Delta table format using Medallion architecture with Unity Catalog 

![image](https://github.com/user-attachments/assets/b46236da-2888-4da4-8035-2cb7ea7885f8)



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


Next step , we will create bronze tables based on Drivers.json and Results.json

![image](https://github.com/user-attachments/assets/2e9eb260-e80a-4d92-9d94-4ba3b0a26cd3)


![image](https://github.com/user-attachments/assets/6348d7ab-b8b0-43a4-a1d3-4871f9c29ae5)


![image](https://github.com/user-attachments/assets/5b217f41-4c54-46dd-b9b9-ac73f10ff470)


![image](https://github.com/user-attachments/assets/288bea12-e5dd-4319-af35-f441578eccf0)

You can see table type is external

![image](https://github.com/user-attachments/assets/467c4f27-492f-48c2-b15c-32e726c7a112)


Just to make sure run with workflow adding Drop table command in code

Results table also created in Bronze

![image](https://github.com/user-attachments/assets/312d4208-e7d8-42f5-8efa-2613c17e5865)


![image](https://github.com/user-attachments/assets/7520a206-8528-431f-b3d5-c23f888af704)


Next step we will creating of Silver and Gold tables in managed locations in delta format


Silver table got created and type is managed

![image](https://github.com/user-attachments/assets/3782f7db-6e94-4236-9dbb-3252a6eb6737)

![image](https://github.com/user-attachments/assets/d1e7794d-a287-4536-8434-18064f33207b)


![image](https://github.com/user-attachments/assets/453738a9-8a1d-4d5c-9da4-2b6ba7298fdf)



Meantime, please check delta table data stored in storage - Store

![image](https://github.com/user-attachments/assets/7bb877b4-c2b2-4d16-9893-a41e5f25d44a)



![image](https://github.com/user-attachments/assets/3fabffa0-50d4-4915-815a-3f61c1a62bca)


Results table also created in Silver from Bronze

![image](https://github.com/user-attachments/assets/da9e5bfb-9dc6-4aa8-a6b3-ecdd17b73622)


![image](https://github.com/user-attachments/assets/b1d254f0-8808-47dc-9970-26555e66562a)


![image](https://github.com/user-attachments/assets/55fa9485-8863-4bcc-9e1e-71c05c1bb619)


![image](https://github.com/user-attachments/assets/3eb4ef4b-ab2b-414b-a5ea-8e6625419a1a)

![image](https://github.com/user-attachments/assets/54124a07-5ca8-4d16-a883-86461134d59e)

Next we will create a workflow - job to execute all notebooks


![image](https://github.com/user-attachments/assets/57b79164-622b-4504-aac4-f868389e3c7c)


![image](https://github.com/user-attachments/assets/4170791c-1e90-487b-962a-164247502cbf)


![image](https://github.com/user-attachments/assets/790f980c-687a-4329-a684-89287e442736)


All tasks are in place

![image](https://github.com/user-attachments/assets/1c2b2376-ba87-4b5f-b4e3-40eb09bd068a)


![image](https://github.com/user-attachments/assets/e18005e1-9b5c-417f-be97-cb1717a17578)

Job Failed 

![image](https://github.com/user-attachments/assets/cd84efee-3d69-4751-af56-bb10ba6ecb6c)


Issue was with one syntax issue. It is fixed and running 

Job got executed successfully

![image](https://github.com/user-attachments/assets/92c35407-8197-4409-9522-26597962805d)


You can see time line here

![image](https://github.com/user-attachments/assets/4a30b7f2-d01d-45fb-af75-62cdd98e7016)

![image](https://github.com/user-attachments/assets/edda14fe-4eca-4fb5-b1a2-874a356d2d1b)

![image](https://github.com/user-attachments/assets/b7713f08-15de-4da0-9fe0-b1cc46b8a1bb)


To see lineage

![image](https://github.com/user-attachments/assets/8206be1d-8cf6-4a71-8f02-dba9d7d8b306)


![image](https://github.com/user-attachments/assets/c404707a-3703-4b0d-92ba-ff6cf2a35482)

Final result is captured in gold table

![image](https://github.com/user-attachments/assets/a4275528-7e8d-4962-a60a-9c066542a71a)

Scheduled job to run automatically

![image](https://github.com/user-attachments/assets/f7f63441-f673-4b00-b9aa-6013320bebab)

Job started at 1.30 CT

![image](https://github.com/user-attachments/assets/a6c3e770-7efb-4e1a-ab0f-3dc73c248085)


Final Result Once Again

![image](https://github.com/user-attachments/assets/74818425-5f7d-452c-be6c-f477a4918115)



Job ran successfully

![image](https://github.com/user-attachments/assets/79348efd-45c1-4c5c-a5cc-ef0da7fdb56d)


