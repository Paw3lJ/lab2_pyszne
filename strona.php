<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Nie pyszne</title>
        <meta name="description" content="Strona służąca do zamawiania jedzenia pod wskazany adres">
        <link rel="stylesheet" href="main.css">
    </head>
    <body>

		<h1>Zamów swoje towary</h1>
    <h2>Pohandlujemy?</h2>
    <?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "pyszne";
    
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }
    
    $sql = "SELECT nazwa, cena FROM dania";
    $result = $conn->query($sql);
    
    if ($result->num_rows > 0) {
      // output data of each row
      while($row = $result->fetch_assoc()) {
        echo "Danie: " . $row["nazwa"]. " - Cena: " . $row["cena"]. "<br>";
      }
    } else {
      echo "0 results";
    }
    $conn->close();
    ?>
    </body>
</html>
