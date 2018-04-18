/*
 * GET home page.
 */
module.exports.home = function(req, res)
{
    res.render('index', { title: 'Team6 Homework 7' });
};

/*
 * GET new note page.
 */
module.exports.get_newnote = function(req, res)
{
    res.render('newnote', { title: 'Add New Note' });
};
