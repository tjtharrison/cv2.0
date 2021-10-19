const express = require('express');
const path = require('path');
const hbs = require('express-handlebars');
const bodyParser = require("body-parser");

// App Routes
var indexRouter = require('./routes/index');

// Set App
const app = express()

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

// Setup Body Parser
app.use(bodyParser.urlencoded({extended: true}))
app.use(bodyParser.json());

// Public Files
app.use(express.static(path.join(__dirname, 'public')));

// User Routes
app.use('/', indexRouter);

// Launch Express
app.listen(8001, () => {
    console.log('Web Server started on port 8001')
})