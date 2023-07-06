const express = require('express');
const app = express();
const port = 3000;

// GET endpoint for the root URL
app.get('/', (req, res) => {
  res.send('Hello, world!');
});

app.get('/hello', (req, res) => {
  res.send('Hello, world! from hello api-- modified');
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});