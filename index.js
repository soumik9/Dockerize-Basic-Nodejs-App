import express from 'express';

const app = express();
const port = 8003;

// Middleware to parse JSON requests
app.use(express.json());

// Simple GET route
app.get('/', (req, res) => {
    res.json({
        message: 'Hello World!',
    });
});

// Start server
app.listen(port, () => {
    console.log(`Server is running at http://localhost:${port}`);
});