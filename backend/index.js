// Import the Express.js framework and create an instance of the application.
const express = require('express');
const app = express();

// Define the port number to listen on. Use port 8080 by default, or the one specified in the environment variable.
const port = 8080 || process.env.PORT;

const cors = require('cors');
const bodyParser = require('body-parser');

const mongoose = require('mongoose');
mongoose.connect("mongodb://localhost:27017/mydbs");

app.use(cors());
app.use(bodyParser.urlencoded({extended:true}));
app.use(bodyParser.json());
app.use('/',require('./routes/user.route'))
// Start the server and listen on the specified port.
app.listen(port, () => {
    console.log('Port running on : ' + port);
});
