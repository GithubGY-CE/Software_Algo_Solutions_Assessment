# Software Algo Solutions Assessment

This T-SQL script reads a text file, removes the first and last rows of records, and saves the modified content back to the file.

## Prerequisites

- [SQL Server Management Studio (SSMS)](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15) installed on your machine.
- Access to a SQL Server instance where you want to run the script.

## Usage

1. **Open SQL Server Management Studio (SSMS):**
   - Open SQL Server Management Studio on your machine.

2. **Connect to Your Database:**
   - Connect to the SQL Server instance where you want to run the script.

3. **Query Editor:**
   - Open a new query window in SSMS.

4. **Paste the Script:**
   - Copy the T-SQL script from the .sql file and paste it into the query window.

5. **Modify File Paths:**
   - Update the file paths in the script (`'C:\sample-file.txt'`) to point to the actual locations of your source and destination files.
   - Replace the server name in (`-Sservername`) with the actual name of your server.

7. **Execute the Script:**
   - Execute the script by clicking the "Execute" button or pressing F5. This will run the script against your SQL Server database.

8. **Check for Errors:**
   - Review the messages pane for any errors or informational messages. 

9. **Verify the Results:**
   - Check the specified output file (e.g., `'C:\sample-file.txt'`) to ensure that the script successfully removed the first and last rows.

## Notes
- This script assumes that each row in the file is separated by a newline (`\n`) as given in the sample file. 
- xp_cmdshell must be enabled to execute this script