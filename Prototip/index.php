<!DOCTYPE html>

<?php
     include 'header.php';
     ?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel</title>
</head>
<body>
<section id="prozor1" >
<form>
  <label>Odabir suncobrana ili ležaljke:</label>
  <select id="odabir1">
    <option value="parasL">Veliki suncobran</option>
    <option value="parasM">Mali suncobran</option>
    <option value="sunchairL">Velika ležaljka</option>
    <option value="sunchairM">Mala ležaljka</option>
  </select>
  <br><br>
  <label>Odabir broja suncobrana/ležaljki:</label>
  <select class="odabir2">
<?php
    for ($i=1; $i<=100; $i++)
    {
        ?>
            <option value="<?php echo $i;?>"><?php echo $i;?></option>
        <?php
    }
?>
</select>
<br><br>
  <input type="submit" value="Nadodaj">
</form>
<br>
<input type="text" id="cijena" name="cijena" placeholder="Ukupna cijena"><br><br>
<input type="submit" value="Nadodati popust">
</section>

<section id="prozor2">
<table class="table2">
  <h3>Stanje u skladištu</h3>
    <?php
        echo "<tr><td>" . "Suncobran Veliki" . "</td><td>" . "Suncobran Mali" . "</td><td>" . "Ležaljka Velika" . "</td><td>" . "Ležaljka Mala" . "</td><tr>";
            $result = mysqli_query($conn, "SELECT * FROM storage");
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                echo "<tr><td>" . $row["parasL"] . "</td> <td>" . $row["parasS"] . "</td> <td>" . $row["sunchairL"] . "</td> <td>" . $row["sunchairS"] . "</td><tr>";
            }
        }
    ?>
</table>
</section>

</body>
</html>


