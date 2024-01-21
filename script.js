const fs = require('fs');

function editFile(filePath) {
  try {
    //Read the file content
    const fileContent = fs.readFileSync(filePath, 'utf-8');

    //Split the content into an array of lines and filter out the empty lines
    const lines = fileContent.split('\n').filter(line => line.trim() !== "");

    lines.shift(); // Remove the first row of the records
    lines.pop();   // Remove the last row of the records

    //Join the lines back into a string
    const modifiedRecords = lines.join('\n');

    //Save the modified content back to the file
    fs.writeFileSync(filePath, modifiedRecords, 'utf-8');

    console.log('File revised successfully.');
    
  } catch (error) {
    console.error('Error revising the file:', error.message);
  }
}

// Example usage
const filePath = '/home/gy/repos/Javascript/Software_algo_solutions_assessment/sample-file.txt';
editFile(filePath);
