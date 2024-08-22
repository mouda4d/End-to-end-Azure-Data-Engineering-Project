CREATE LOGIN mouda WITH PASSWORD = 'Mouda4d@gmail.com';
CREATE USER mouda FOR LOGIN mouda;


SELECT
    TABLE_NAME,
    TABLE_SCHEMA 
 from 
    information_schema.TABLES
where 
    table_schema = 'SalesLT'
AND
    table_type = 'BASE TABLE';

select t.name, s.name from sys.tables t inner join sys.schemas s on t.schema_id = s.schema_id where s.name = 'SalesLT';



USE gold_DB
GO

CREATE OR ALTER PROCEDURE CreateSQLServerlessView_gold 
@view_name NVARCHAR(100)
AS 
BEGIN

Declare @sql VARCHAR(max)
    SET @sql = CONCAT(N'CREATE OR ALTER VIEW ', @view_name, ' AS 
    SELECT * FROM OPENROWSET(
        BULK \'https://storagemouda.dfs.core.windows.net/gold/SalesLT/Address/\',
        FORMAT = \'DELTA\'
    ) AS [result]')

EXEC (@sql)

END
GO