/* 
==========================================================

Create database and schemas

==========================================================

script Purpose:

	This scrpit create a new database named 'Datawarehouse' after checking if it already exists.
	If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
	within the database: 'bronze', 'silver', 'gold'.

WARNING:
	Running this script will drop the entire 'Datawarehouse' database if it exists.
	All data in the database will be permanently deleted. Proceed with caution
	and ensure you have proper backup before running this scrpt.
*/

USE MASTER;
GO

-- Drop and recreate the 'Datawarehouse' Database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN 
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Datawarehouse;
END;
GO

-- Create the 'Datawarehouse' Database
CREATE DATABASE Datawarehouse;
GO

USE Datawarehouse;
GO

-- Create SCHEMAS

CREATE SCHEMA Bronze;
GO

CREATE SCHEMA Silver;
GO

CREATE SCHEMA Gold;
GO
