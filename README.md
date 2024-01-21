# Software Algo Solutions Assessment

This Node.js script reads a text file, removes the first and last rows of records, and saves the modified content back to the file.

## Usage

1. **Install Node.js:**
   - Download and install Node.js from [https://nodejs.org/](https://nodejs.org/).

2. **Clone or Download the Repository:**
   - Clone this repository or download the script file (`script.js`) to your local machine.

3. **Run the Script:**
   - Edit the `filePath` variable in the script to point to your target text file.
   - Run the script using the following command in the terminal:
     ```bash
     node script.js
     ```

5. **Verify Results:**
   - Check the console output for a success message or any error messages.
   - The modified file will be saved in place, and the original file will be updated.

## Error Handling

The script includes basic error handling to catch and log any errors that may occur during file processing. If you encounter issues, check the console output for error messages.

## Notes

- Ensure that the file path specified in the `filePath` variable is correct.
- This script assumes that each row in the file is separated by a newline (`\n`). Adjust the code accordingly if your file has a different structure.
