<!DOCTYPE html>

<?php
     include 'header.php';
     ?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cjenik</title>
</head>
<body>
<table class="table1">
    <?php
        echo "<tr><td>" . "Suncobran Veliki" . "</td><td>" . "Suncobran Mali" . "</td><td>" . "Ležaljka Velika" . "</td><td>" . "Ležaljka Mala" . "</td><tr>";
            $result = mysqli_query($conn, "SELECT * FROM prices");
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                echo "<tr><td>" . $row["parasL"] . "</td> <td>" . $row["parasS"] . "</td> <td>" . $row["sunchairL"] . "</td> <td>" . $row["sunchairS"] . "</td><tr>";
            }
        }
    ?>
</table>
</body>
</html>