const express = require('express');
const router = express.Router();
const fetch = require('node-fetch');

/* GET home page. */
router.get('/', function (req, res, next) {
    // const api = process.env.API_URL || "localhost";
    res.render('index', { title: 'TJTH CV 2.0', active: { index: true }});
});

/* GET Main. */
router.get('/main', function (req, res, next) {
    // const api = process.env.API_URL || "localhost";
    res.render('maincv', { title: 'TJTH CV 2.0 Main CV', active: { index: true }});
});

module.exports = router;
