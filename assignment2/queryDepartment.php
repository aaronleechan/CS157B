<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <title>Query Results</title>
</head>

<body>
<h1>Query Results</h1>
<?php
require('Department.php');

function createTableRow(Department $d) {
    print "        <tr>\n";
    print "            <td>" . $d->getID()     . "</td>\n";
    print "            <td>" . $d->getCode()   . "</td>\n";
    print "            <td>" . $d->getName()  . "</td>\n";
    print "            <td>" . $d->getSchoolID(). "</td>\n";
    print "        </tr>\n";
}

$departmentId = filter_input(INPUT_GET, "departmentId");
$departmentCode  = filter_input(INPUT_GET, "departmentCode");
$departmentName = filter_input(INPUT_GET, "departmentName");

echo " Print all Name";
echo " department code : ". $departmentCode . " name " . $departmentName . " id " . $departmentId;



try {
    // Connect to the database.
    $con = new PDO("mysql:host=localhost;dbname=cs157b",
        "root", "");
    $con->setAttribute(PDO::ATTR_ERRMODE,
        PDO::ERRMODE_EXCEPTION);

    $query = "SELECT * FROM Department";

    // Fetch the matching database table rows.
    $data = $con->query($query);
    $data->setFetchMode(PDO::FETCH_CLASS, "Department");

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
    if ((strlen($departmentCode) > 0) || (strlen($departmentName) > 0) || (strlen($departmentId) > 0)) {

        $query = "SELECT * FROM Department ".
            "WHERE  DepartmentName = :departmentName ".
            "OR     DepartmentCode = :departmentCode ".
            "OR     DepartmentID   = :departmentId";
        ;
        $sql = $con->prepare($query);
        $sql->bindParam(':departmentName', $departmentName);
        $sql->bindParam(':departmentCode', $departmentCode);
        $sql->bindParam(':departmentId',   $departmentId);
    }
    else {
        $sql = $con->prepare($query);
    }

    // Fetch the matching database table rows.
    $sql->execute();
    $sql->setFetchMode(PDO::FETCH_CLASS, "Department");

    // Construct the HTML table row by row.
    while ($department = $sql->fetch()) {
        createTableRow($department);
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
