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
        require('Professor.php');

        function createTableRow(Professor $p) {
            print "        <tr>\n";
            print "            <td>" . $p->getID()     . "</td>\n";
            print "            <td>" . $p->getLastName()   . "</td>\n";
            print "            <td>" . $p->getFirstName()  . "</td>\n";
            print "        </tr>\n";
        }

        $first = filter_input(INPUT_GET, "firstName");
        $last  = filter_input(INPUT_GET, "lastName");

        try {
            // Connect to the database.
            $con = new PDO("mysql:host=localhost;dbname=cs157b",
                           "root", "");
            $con->setAttribute(PDO::ATTR_ERRMODE,
                               PDO::ERRMODE_EXCEPTION);

            $query = "SELECT * FROM Professor";

            // Fetch the matching database table rows.
            $data = $con->query($query);
            $data->setFetchMode(PDO::FETCH_CLASS, "Professor");

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
            if ((strlen($first) > 0) && (strlen($last) > 0)) {
                $query = "SELECT * FROM professor ".
                         "WHERE firstname = :first ".
                         "AND   lastname  = :last";
                $sql = $con->prepare($query);
                $sql->bindParam(':first', $first);
                $sql->bindParam(':last',  $last);
            }
            else {
                $sql = $con->prepare($query);
            }

            // Fetch the matching database table rows.
            $sql->execute();
            $sql->setFetchMode(PDO::FETCH_CLASS, "Professor");

            // Construct the HTML table row by row.
            while ($professor = $sql->fetch()) {
                createTableRow($professor);
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
