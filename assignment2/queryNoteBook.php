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
require('NoteBook.php');

function createTableRow(NoteBook $d)
{
    print "        <tr>\n";
    print "            <td>" . $d->getNotebookID() . "</td>\n";
    print "            <td>" . $d->getNotebookName() . "</td>\n";
    print "            <td>" . $d->getUserID() . "</td>\n";
    print "            <td>" . $d->getClassID() . "</td>\n";
    print "        </tr>\n";

}
$noteBookId = filter_input(INPUT_GET, "noteBookId");
$noteBookName  = filter_input(INPUT_GET, "noteBookName");

echo " Print all Name";
echo " notebook ID : ". $noteBookId . " notebook name " . $noteBookName  ;
try {
    // Connect to the database.
    $con = new PDO("mysql:host=localhost;dbname=cs157b",
        "root", "");
    $con->setAttribute(PDO::ATTR_ERRMODE,
        PDO::ERRMODE_EXCEPTION);

    $query = "SELECT * FROM NoteBook";

    // Fetch the matching database table rows.
    $data = $con->query($query);
    $data->setFetchMode(PDO::FETCH_CLASS, "NoteBook");

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
    if ((strlen($noteBookId) > 0) || (strlen($noteBookName)>0)) {

        $query = "SELECT * FROM NoteBook".
            "WHERE  NotebookID = :noteBookId ".
            "OR     NotebookName = :noteBookName ";
        ;
        $sql = $con->prepare($query);
        $sql->bindParam(':noteBookId', $noteBookId);
        $sql->bindParam(':noteBookName', $noteBookName);
    }
    else {
        $sql = $con->prepare($query);
    }

    // Fetch the matching database table rows.
    $sql->execute();
    $sql->setFetchMode(PDO::FETCH_CLASS, "NoteBook");

    // Construct the HTML table row by row.
    while ($noteBook = $sql->fetch()) {
        createTableRow($noteBook);
    }

    print "    </table>\n";
}
catch(PDOException $ex) {
    echo 'ERROR: '.$ex->getMessage();
}

?>