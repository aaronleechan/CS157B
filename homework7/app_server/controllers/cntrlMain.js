/*
 * GET home page.
 */
module.exports.home = function(req, res)
{
    res.render('index', { title: 'MongoDB-Express Demo' });
};

/*
 * GET new note page.
 */
module.exports.get_newnote = function(req, res)
{
    res.render('newnote', { title: 'Add New Note' });
};
