<?php
require("connexpdo.inc.php"); // pensez à modifier la fonction connexpdo pour vous connecter à la base de données.

// TODO : Q1) Récupérez l'ensemble des gouvernements et des continents de la table FEATURES (1 seul ligne par pays)


$pdo = connexpdo("l2mpcie_ct_21_2_pays.sql");
$query = "SELECT * FROM FEATURES ";
try {
    $array=();
    $result = $pdo->query($query);
    while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
        $ARRAY.push($row);
    }
        s
} catch (PDOException $e) {
    displayException($e);
    exit();
}





$contGov = array();


// TODO : Q2) Créez un tableau contenant pour chaque continent le nombre de type de gouvernement
// Si vous n'avez pas réussi la question d'avant décommentez la ligne suivante qui importe les éléments du tableau $contGov :
// require("data/contGov.php");
$tabNbGovCont  = array();


// TODO : Q3) Modifiez $tabNbGov en regroupant pour chaque continent les républiques, les monarchies et les autres.
// Si vous n'avez pas réussi la question d'avant décommentez la ligne suivante qui importe les éléments du tableau $tabNbGovCont :
// require("data/tabNbGovCont.php");


?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Tableau du nombre de type de gouvernement par continent</title>
    <style>
        table {
            text-align: center;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
<table>
    <thead>
        <tr>
            <th>Continent</th>
            <th>Republic</th>
            <th>Monarchy</th>
            <th>Other</th>
        </tr>
    </thead>
    <tbody>
        <?php
        // TODO : Q4) Affichez le tableau du nombre de chaque type de gouvernement
        // Si vous n'avez pas réussi la question d'avant décommentez la ligne suivante qui importe les éléments du tableau $tabNbGovCont :
        //require("data/tabNbGovCont-V2.php");
       
        ?>
    </tbody>
</table>
</body>
</html>
