const express = require('express');
const app = express();
const massive = require('massive');
require('dotenv').config();
const controller = require('./controller');

// Server port and connection string are in the .env file so I dont push them up to github
const {SERVER_PORT, CONNECTION_STRING} = process.env

app.use(express.json())

// connecting to the data base and then spinning up the server
massive({connectionString: CONNECTION_STRING, ssl: {rejectUnauthorized: false}}).then(dbInstance => {
    app.set('db', dbInstance)
    console.log('Data base connected')
    app.listen(SERVER_PORT, () => {
        console.log(`Server listening on port ${SERVER_PORT}`)
    })
})

//  endpoints

