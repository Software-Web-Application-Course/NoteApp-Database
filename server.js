const express = require('express');
const cors = require('cors');
const db = require('./db');

const app = express();

app.use(cors());
app.use(express.json());

app.get('/api/health', async (req, res) => {

    const [rows] = await db.query('SELECT 1 AS ok');

    res.json({
        dbStatus: rows[0].ok
    });

});

app.listen(5000, () => {

    console.log("Server running on Port 5000");

});