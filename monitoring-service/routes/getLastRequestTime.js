var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    //reports back when the last request occurred
    res.render('test', { title: 'Get Last Request Time', message:'' });
});

module.exports = router;
