var express = require('express');
var router = express.Router();
const path = require('path');
const viewsPath = {root: path.join(__dirname, "../views")};
const log = require('simple-node-logger').createSimpleLogger('logs/events.log');

/* POST users listing. */
router.post('/purchase/^.*John.*$/[0-9][0-9][0-9]', function(req, res) {
  log.info('POST /purchase');

  var item = req.body.item;
  var quantity = req.body.quantity;

  res.send(item + quantity);
});

module.exports = router;
