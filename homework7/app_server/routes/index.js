var express = require('express');
var router = express.Router();
var ctrlMain = require("../controllers/cntrlMain");

console.log("Router:"); console.log(router);

/*
 * GET home page.
 */
router.get('/', ctrlMain.home);

module.exports = router;
