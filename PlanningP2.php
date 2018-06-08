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
	echo "Cette page va afficher la liste des élèves";
	require_once('FonctionConnection.php');
	 ListeEleve() ?>



 </body>