<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <title>Query Results</title>
</head>
<body>
<h1>Query Results</h1>


<?php
/**
 * Created by PhpStorm.
 * User: emmyli
 * Date: 2018/2/28
 * Time: 下午6:31
 */
require('Notebook.php');

function createTableRow(Notebook $d)
{
    print "        <tr>\n";
    print "            <td>" . $d->getNotebookID() . "</td>\n";
    print "            <td>" . $d->getNotebookName() . "</td>\n";
    print "            <td>" . $d->getUserID() . "</td>\n";
    print "            <td>" . $d->getClassID() . "</td>\n";
    print "        </tr>\n";

}
$notebookId = filter_input(INPUT_GET, "NotebookID");
$notebookName  = filter_input(INPUT_GET, "NotebookName");

try {
    // Connect to the database.
    $con = new PDO("mysql:host=localhost;dbname=cs157b",
        "root", "");
    $con->setAttribute(PDO::ATTR_ERRMODE,
        PDO::ERRMODE_EXCEPTION);

    $query = "SELECT * FROM Notebook";

    // Fetch the matching database table rows.
    $data = $con->query($query);
    $data->setFetchMode(PDO::FETCH_CLASS, "Notebook");

    // We're going to construct an HTML table.
    print "    <table border='1'>\n";

    // Fetch the database field names.
    $result = $con->query($query);
    $row = $result->fetch(PDO::FETCH_ASSOC);

    // Construct the header row of the HTML table.
    print "            <tr>\n";
    foreach ($row as $field => $value) {
        print "                <th>$field</th>\n";
    }
    print "            </tr>\n";

    // Constrain the query if we got first and last names.
    if ((strlen($notebookId) > 0) || (strlen($notebookName)>0)) {

        $query = "SELECT * FROM Notebook ".
            "WHERE  NotebookID = :notebookId ".
            "OR     NotebookName = :notebookName ";
        $sql = $con->prepare($query);
        $sql->bindParam(':notebookId', $notebookId);
        $sql->bindParam(':notebookName', $notebookName);
    }
    else {
        $sql = $con->prepare($query);
    }

    // Fetch the matching database table rows.
    $sql->execute();
    $sql->setFetchMode(PDO::FETCH_CLASS, "Notebook");

    // Construct the HTML table row by row.
    while ($notebook = $sql->fetch()) {
        createTableRow($notebook);
    }

    print "    </table>\n";
}
catch(PDOException $ex) {
    echo 'ERROR: '.$ex->getMessage();
}

?>

<a href="index.html"> back </a>
</body>
</html>
