const express = require('express');
const path = require('path');
const app = express();
const port = process.env.PORT || 3000;

// Serve Static
app.use(express.static(path.join(__dirname, 'public')));

// Start
app.listen(port, () => {
    console.log(`Server is running on port ${port}. Version 2`);
});
