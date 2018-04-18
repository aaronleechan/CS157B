/*
 * GET home page.
 */
module.exports.home = function(req, res)
{
    res.render('index', { title: 'MongoDB-Express Demo' });
};

// /*
//  * GET new user page.
//  */
// module.exports.get_newuser = function(req, res)
// {
//     res.render('newuser', { title: 'Add New User' });
// };
