var express = require('express');
var router = express.Router();
const path = require('path');
const logsPath = {root: path.join(__dirname, "/ordering-service")};
const log = require('simple-node-logger').createSimpleLogger('../ordering-service/events.log');

/* GET users listing. */
router.get('/', function(req, res, next) {
    log.info('GET /logs');
    res.sendFile("events.log", logsPath);
});

module.exports = router;
