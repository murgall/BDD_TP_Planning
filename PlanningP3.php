<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Liste eleve</title>
	<link rel="stylesheet" type="text/css" href="MiseEnForme.css">
</head>
<body>
	<h1>Essai de requête à la base de donnée "planning_hebdo"</h1>


	<?php
	echo "Cette page va afficher la liste des classes";
	require_once('FonctionConnection.php');
	?>	<form action='PlanningP3.php' id="form" method="get">
            <select name="Classe">
                <?php  tirage()?>

            </select>
         <p><input type=submit Id="testela" value="Valider"></p>
    </form>

    <?php recup_J()?>






 </body>