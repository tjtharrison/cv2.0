const express = require('express');
const router = express.Router();
const fetch = require('node-fetch');

/* GET home page. */
router.get('/', function (req, res) {

    const defaultPage = "index";
    const pageName = req.cookies['buildState'] || defaultPage;
    res.render(pageName, { title: 'TJTH CV 2.0' });
});

module.exports = router;