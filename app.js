const express = require('express');
const app = express();
const PORT = 3000;  // Application Run on PORT 3000.

app.get('/', (req, res) => {
    res.send('Hello, World! Simran');
});

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
