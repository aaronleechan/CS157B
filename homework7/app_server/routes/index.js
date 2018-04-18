var express = require('express');
var router = express.Router();
var ctrlMain  = require("../controllers/cntrlMain");
var modelMain = require("../models/modelMain");

console.log("Router:"); console.log(router);

/*
 * GET home page.
 */
router.get('/', ctrlMain.home);

/*
 * GET note list page.
 */
router.get('/notelist', modelMain.get_notelist);

/*
 * GET new user page.
 */
router.get('/newnote', ctrlMain.get_newnote);

/*
 * POST add note page.
 */
router.post('/addnote', modelMain.post_addnote);

/*
 * GET show note page.
 */
router.get('/notelist/:term', modelMain.get_shownote);

// /*
//  * GET delete user page.
//  */
// router.get('/deleteuser/:username', ctrlMain.get_deleteuser);
//
// /*
//  * POST delete user page.
//  */
// router.post('/deleteuser/:username', modelMain.post_deleteuser);

module.exports = router;
