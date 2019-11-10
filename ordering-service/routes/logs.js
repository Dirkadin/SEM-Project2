var express = require('express');
var router = express.Router();
const path = require('path');
const logsPath = {root: path.join(__dirname, "/ordering-service/events.log")};
const log = require('simple-node-logger').createSimpleLogger('logs/events.log');

/* GET users listing. */
router.get('/', function(req, res, next) {
    log.info('GET /logs');
    res.sendFile("/ordering-service/events.log", logsPath);
});

module.exports = router;
