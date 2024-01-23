-- Create a temporary table to hold the file data
CREATE TABLE TempTable (
    Records VARCHAR(50) NOT NULL
);

-- Insert the data from the text file into the temporary table
BULK INSERT TempTable
FROM 'C:\sample-file.txt'
WITH (
    ROWTERMINATOR = '\n',
    FIRSTROW = 2 --Excludes the first row
);

-- Delete the last row from the temporary table
WITH ToDelete
AS
(SELECT TOP 1 Records
FROM TempTable
ORDER BY Records ASC)
 
DELETE FROM ToDelete;

-- Export the modified data back to the text file using BCP
DECLARE @bcp NVARCHAR(50);
SET @bcp = 'bcp "SELECT Records FROM TempTable" queryout "C:\sample-file.txt" -c -t, -Sservername -T';
EXEC master.dbo.xp_cmdshell @bcp, NO_OUTPUT; 

-- Drop the temporary table
DROP TABLE TempTable;