const express = require('express');
const app = express();
const PORT = 80;  // Application Run on PORT 80.

app.get('/', (req, res) => {
    res.send('Hello Simranpreet Singh, Good job!');
});

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
