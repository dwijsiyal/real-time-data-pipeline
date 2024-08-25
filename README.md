# real-time-data-pipeline for Public Bus Transit Data (Azure Cloud)
### Table of Contents
1. Problem Statement
2. Approach
3. Importance of Project
4. Screenshots
5. Video Demo

### 1. Problem Stateemnt
Public transportation systems generate a vast amount of data, which often remains siloed within different departments, making it difficult to use for real-time decision-making. This project addresses the challenge of creating a unified data pipeline that can process and analyze data from multiple sources in real-time. For example, data from bus routes, boarding times, and stop locations can be analyzed to optimize bus schedules, reduce wait times, and improve overall service efficiency.

### 2. Approach
- **Real-Time Data Emulation:** Data is emulated to be similar to real-time data using a Python script that simulates live data feed from a public dataset. The data includes trip IDs, route IDs, stop IDs, stop names, boarding counts. Detailed code is attached in Screenshots.
  
- **Event Hubs:** Microsoft Azure Event Hubs (similar to Apache Kafka) is used for real-time data ingestion. It is configured to stream data into the pipeline, allowing for scalable and efficient data collection and handling. Azure Stream Analytics and python script are connected to this service using primary connection string which is shown in Screenshots.
  
-	**Azure Stream Analytics:** This service (similar to Apache Spark Streaming) processes the data in real-time, transforming it as necessary and routing the processed data to an output (here Azure SQL Server). Azure Stream Analytics is referred as a job that need to be started before it can read and processes data from Event Hubs.

-	**Data Storage:** Processed data is stored in Azure SQL Server, which is configured to handle large volumes of data with minimal latency. Since this a database service it was configured to be able to store all the data from csv file and have space for more.

-	**Data Analysis and Visualization:** Microsoft Power BI is used for real-time data analytics, enabling visualization of patterns and insights from the transportation data. Power BI was first connected to database using SQL login credentials, thereafter a date dimensional table was created that would contain all the dates from oldest date of data to latest date in data. Established a relationship of one-to-many from the dimensional table to fact table on WeekBeginning column. After creating measures for Data of Previous week, Current Week and Boardings change, visualizations were created and analyzed. All visualizations are attached in Screenshots.

![image](https://github.com/user-attachments/assets/2ae97011-f149-4a31-9c97-619073e909e6)


### 3. Importance of Project & Future Scope
- Public transportation systems generate a vast amount of data, which often remains siloed within different departments, making it difficult to makke data driven decisions. This Project aims to bridge the gap and show one way to generae real-time insights, which may help in improving transit efficientcy and incident managment.

- Integrating machine learning models into the pipeline could enhance predictive analytics, such as forecasting bus delays or optimizing route planning.

- Expanding the pipeline to handle data from multiple cities or regions could provide broader insights and improve the scalability of the solution.

### 4. Screenshots

- **Resource Group: stream-analytics-project**
![image](https://github.com/user-attachments/assets/3ff8952f-05c2-4a6c-a186-2e5d3fc78fd6)

- **Event Hubs: Overview Page and Connection String**
![image](https://github.com/user-attachments/assets/343b7072-0398-4e68-90f3-685d2ee9b9a8)
![image](https://github.com/user-attachments/assets/797561ee-8288-4a8e-8736-e3d148b2ba27)
![image](https://github.com/user-attachments/assets/f40f3002-dc5d-4da7-b68f-ecadb8ed5d72)

- **Azure Stream Analytics : Query Page**
![image](https://github.com/user-attachments/assets/a595b3a5-f5d7-4e64-a5d4-655ae9147e95)

- **Azure SQL Server: Overview Page Query Page**
![image](https://github.com/user-attachments/assets/3aceeb83-1c1f-4075-ac25-3eb417dc7702)
![image](https://github.com/user-attachments/assets/00fe8682-1927-481f-a9ae-30ce046c29bf)
![image](https://github.com/user-attachments/assets/9bdd9364-a9db-4257-b869-7ce61c2f0d8f)

- **Power BI: Dashboards**
![image](https://github.com/user-attachments/assets/064f3a89-2699-4b44-a888-a40569f28575)
![image](https://github.com/user-attachments/assets/8114e071-8263-429a-929a-a8abca2ecfc0)
![image](https://github.com/user-attachments/assets/d2542c6e-8790-42ea-bb25-623324199dd2)


### 5. Video Demo

- **Data Pipeline Demo:**

https://github.com/user-attachments/assets/f14cea1f-f492-4b4d-bb9c-0add73bbc808


- **Power Bi Demo**

https://github.com/user-attachments/assets/d1ebff3b-f9df-4d58-b2d3-a993a8cc9118

