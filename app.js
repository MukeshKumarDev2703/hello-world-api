const express = require('express');
const app = express();
const PORT = 3000;  // Make sure this is the port you intend to use

app.get('/', (req, res) => {
    res.send('Hello, World! Mukesh');
});

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
