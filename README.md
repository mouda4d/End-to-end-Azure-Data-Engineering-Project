# End-to-End Azure Data Engineering Pipeline

## Overview

This repository showcases a comprehensive end-to-end data engineering solution built on Azure. The project integrates and utilizes various Azure services to orchestrate, transform, and visualize data. The pipeline includes Azure Data Factory (ADF) for orchestration, Azure Databricks for data transformation using PySpark notebooks, Azure Synapse Analytics for data warehousing, and Power BI for visualization.

## Project Structure

The project is organized into the following components:

- **Key Vault**: used to manage secrets. Key Vault eliminates the need for developers to store security information in their code.
- **Azure storage Account**: scalable, durable cloud storage, backup, and recovery solutions for any data, big or small.
- **Azure Data Factory (ADF)**: For data orchestration, workflow automation, and running Databricks notebooks.
- **Azure Databricks**: For data processing, including bronze-to-silver and silver-to-gold transformations using Python notebooks.
- **Azure Synapse Analytics**: For data warehousing and integration.
- **Power BI**: For data visualization and interactive reporting.

## Prerequisites

Before setting up the project, ensure you have:

- An Azure subscription with appropriate permissions.
- Access to Azure Data Factory, Azure Databricks, Azure Synapse Analytics, and Power BI.
- Basic understanding of Azure services and data engineering concepts.

## Getting Started

### 1. Download and Restore AdventureWorksLT2017 Database

1. **Download the Database**: Obtain the AdventureWorksLT2017 database from [this link](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms).

2. **Restore the Database**: Follow the instructions on the download page to restore the database to your SQL Server instance.

### 2. Azure Data Factory (ADF) Setup

Azure Data Factory (ADF) orchestrates data movement and workflow automation, including running Databricks notebooks for data transformations.

0. **Used Key Vault for secrets**:

![secrets](https://drive.google.com/uc?id=1to_glhfyFehClTErYZrZ11i-SerMqRoJ)

1. **Create a Data Pipeline**:
   - **Access ADF Studio**:
     - Navigate to the Azure portal and open Azure Data Factory.
     - Click on "Author & Monitor" to access ADF Studio.
   - **Create a New Pipeline**:
     - Go to "Author" and select "New pipeline."
     - Name the pipeline meaningfully to reflect its function.
   - **Add and Configure Activities**:
     - Add activities such as Copy Data, Data Flow, and Lookup.
     - Set up source and destination configurations.

2. **Configure Data Sources**:
   - **Linked Services**:
     - Go to "Manage" and "Linked services."
     - Create linked services for data sources like Azure SQL Database or Blob Storage.
   - **Create Datasets**:
     - Define datasets for source and destination data.
     - Configure schema mappings and formats.

3. **Define Data Flows**:
   - **Create Data Flows**:
     - Under "Author," select "Data flows" to add transformations.
     - Define data shaping and cleaning tasks.
   - **Debug Data Flows**:
     - Use the Debug feature to ensure transformations work as expected.

4. **Configure and Trigger Databricks Notebooks**:
   - **Create and Configure Databricks Notebooks**:
     - In Azure Databricks, create Python notebooks for bronze-to-silver and silver-to-gold transformations.
   - **Add ADF Databricks Notebook Activity**:
     - In ADF, add a Databricks Notebook activity to the pipeline.
     - Configure the activity to run the notebooks for data transformation.
   - **Configure Triggers**:
     - Set up triggers for scheduled or event-based pipeline execution.
   - **Monitor Pipeline Runs**:
     - Use the "Monitor" tab to track pipeline status and logs.
       
![ADF pipeline](https://drive.google.com/uc?id=1RREJ8Toc2Fh7a6SW4PBw96wg3slklDc0)

### 3. Azure Databricks Setup

Azure Databricks provides a collaborative environment for big data analytics using Apache Spark, including transformations between bronze, silver, and gold layers.

1. **Create a Databricks Workspace**:
   - **Setup Workspace**:
     - In the Azure portal, create a new Databricks workspace.
     - Configure the region and pricing tier.
   - **Configure Workspace**:
     - Access and configure the workspace settings.

2. **Create and Configure a Cluster**:
   - **Create a Cluster**:
     - Go to "Clusters" and set up a new cluster.
     - Choose VM size, node count, and Spark version.
   - **Cluster Configuration**:
     - Configure auto-scaling and spot instances as needed.

3. **Develop Python Notebooks**:
   - **Create Notebooks**:
     - Navigate to "Workspace" and create a new Python notebook.
   - **Write Python Code**:
     - Develop code for bronze-to-silver and silver-to-gold transformations.
   - **Write and Execute Code**:
     - Develop and test Spark code for data transformations.
     - Execute and validate the code.

4. **Link the Two Notebooks to ADF**:
   ![ADF+DB pipeline](https://drive.google.com/uc?id=1Dq5EoTfOJ31LXK5qtSO9_badOPWJ_wvY)
   
   Storage account:
   
   ![Azure Data Storage Account](https://drive.google.com/uc?id=1Y8XoFQRDOxcppqzrup8_erJs-wXiMCVm)
### 4. Azure Synapse Analytics Setup

Azure Synapse Analytics integrates big data and data warehousing capabilities.

1. **Create a Synapse Workspace**:
   - **Setup Workspace**:
     - Create a new Synapse workspace in the Azure portal.
     - Configure settings and linked services.

2. **Configure Data Storage**:
   - Set up connections to your data lake and other data sources.

3. **Create SQL Pools**:
   - **Set Up SQL Pools**:
     - Navigate to "SQL Pools" and create dedicated or serverless SQL pools.
   - **Configure Performance**:
     - Adjust performance and scaling settings based on workload needs.

4.   - **Run Queries **:
     - Execute SQL queries for analysis.
     - Standard Procedure was used to Create Views:
     - 
![synapse procedure](https://drive.google.com/uc?id=1VrVbOxdthX_edFC2_CqO3EqhksSIUDcn)

Synapse pipeline:

![synapse pipeline](https://drive.google.com/uc?id=1DPHrLYj99UG1zQIdmAKzAYsxdrI1eYed)

Synapse Query:

![synapse Query](https://drive.google.com/uc?id=11mTTuSCTZ2zEsGIm7efpbB6MtNjaPWTk)
### 5. Power BI Setup

Power BI provides interactive data visualization and reporting.

1. **Connect Power BI to Synapse**:
   - **Data Connection**:
     - Open Power BI Desktop and connect to Azure Synapse Analytics.
   - **Data Import and Model Creation**:
     - Import data and create data models for visualization.

2. **Create Interactive Reports**:
   - **Design Reports**:
     - Use Power BI Desktop to design and customize interactive reports.
   - **Add Visualizations**:
     - Include charts, graphs, and other visualizations.

3. **Publish and Share Reports**:
   - **Publish to Power BI Service**:
     - Publish reports to Power BI Service for sharing and access control.
   - **Share and Collaborate**:
     - Share reports with stakeholders and set up permissions.

     Dashboard:

     ![Dashboard](https://drive.google.com/uc?id=13gmbddiitaFWkhbW1FCHaJNDD_IA0yjq)

## Conclusion

This repository provides a detailed guide for setting up an end-to-end Azure data engineering pipeline. The project integrates Azure Data Factory, Databricks, Synapse Analytics, and Power BI to deliver a complete data solution. By following the steps outlined in this README, clients and evaluators can replicate the setup in their own environments, customize it to meet their needs, and understand the data flow and transformation process.

## Additional Resources

- [Azure Data Factory Documentation](https://learn.microsoft.com/en-us/azure/data-factory/)
- [Azure Databricks Documentation](https://learn.microsoft.com/en-us/azure/databricks/)
- [Azure Synapse Analytics Documentation](https://learn.microsoft.com/en-us/azure/synapse-analytics/)
- [Power BI Documentation](https://learn.microsoft.com/en-us/power-bi/)
