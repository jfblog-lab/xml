<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
	<head>
		<title>Réalisations | portfolio Guillaume RICHARD | Webmaster</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" media="screen" type="text/css" href="detail.css" />
	</head>

	<body>
		<div id="corps">
		<div id="realisation">
			<h1>Réalisations en ligne</h1>
			<div id="enligne">
				<?php
					if (file_exists('online.xml')){
						$xml = simplexml_load_file('online.xml');

						foreach($xml->site as $site){
							echo "<h2>".$site->titre."</h2>";
							echo "<table><tr>";
							echo "<td>";
							echo "<a href=".$site->url." target=\"_blank\"><img src=image/".$site->nom_image." /></a>";
							echo "</td>";
							echo "<td>";
							echo "<b>type de site : </b>".$site->type."<br/>";
							echo "<b>localisation : </b>".$site->localisation."<br/>";
							echo "<b>description : </b>".$site->description."<br/>";
							echo "<b>poste : </b>".$site->poste."<br/>";
							echo "<b>outils utilisés : </b>".$site->outils."<br/>";
							echo "<b>langages utilisés : </b>".$site->langages."<br/>";
							echo "<b>travail (mission) : </b>".$site->travail."<br/>";
							echo "<b>Lien vers le site : </b><a href=".$site->url." target=\"_blank\">".$site->url."</a>";
							echo "</td>";
							echo "</tr></table>";
						}

					}else{
						echo "le fichier XML n'existe pas";
					}
				?>
			</div>
		</div>
		</div>
	</body>
</html>
