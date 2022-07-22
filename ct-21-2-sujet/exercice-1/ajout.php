<?php
require("connexpdo.inc.php"); // pensez à modifier la fonction connexpdo pour vous connecter à la base de données.
$msg_ajout = "";
if(isset($_POST['envoi'])) {
    if(isset($_POST['nom']) && isset($_POST['prenom']) && isset($_POST['groupe'])) {
        $nom = trim($_POST['nom']);
        $prenom = trim($_POST['prenom']);
        $groupe = $_POST['groupe'];}

?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Ajout d'un pays</title>
</head>
<body>
<form action="" method="POST">
        <fieldset>
            <legend>Ajouter un pays</legend>
            <table style="text-align:right">
                <tr>
                    <td>Nom :</td>
                    <td><input type="text" name="nom" id="nom" value="Loompaland"></td>
                </tr>
                <tr>
                    <td></td><td><input type="submit" value="Ajouter"></td>
                </tr>
            </table>
        </fieldset>
    </form>
    <h2><?= $msg_ajout ?></h2>
</body>
</html>
