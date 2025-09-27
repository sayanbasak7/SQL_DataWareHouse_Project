-- Terminate connections to the database
SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = 'datawarehouse'
  AND pid <> pg_backend_pid();

-- Drop database if it exists
DROP DATABASE IF EXISTS datawarehouse;

-- Create a new database
CREATE DATABASE datawarehouse;

--Creating the 'Datawarehouse' database
CREATE DATABASE datawarehouse;
GO

-- Create the schemas

CREATE SCHEMA GOLD;
GO

CREATE SCHEMA SILVER;
GO

CREATE SCHEMA BRONZE;
GO
