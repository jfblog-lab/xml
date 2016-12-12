<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
	<head>
		<title>Ma bibliothèque</title>
		<link rel="stylesheet" href="css/html.css" />
		<link rel="stylesheet" href="css/style.css" />
	</head>

	<body>
		<h3>Ma bibliothèque</h3>
		<br /><br />
		<ul>
			<xsl:for-each select="bibliotheque/livres">
				<xsl:sort select="livre/titre" order="ascending" />
				<h5><xsl:value-of select="livre/titre" /></h5>
				<table border="1" width="800px" style="background-color:#FFFFCC">
				<tr>
					<td class="image"><img src="{couverture/@scr}"/></td>
					<td>
					<p>
						<span>Auteur(s) :</span>
						<ul>
							<xsl:for-each select="livre/auteurs/auteur">
								<li> - <xsl:value-of select="." /></li>
							</xsl:for-each>
						</ul>
						<br />
						<span>Editeur : </span><xsl:value-of select="livre/editeur" />
						<br />
						<span>Pages : </span><xsl:value-of select="pages" />
						<br />
						<span>Prix : </span><xsl:value-of select="prix" />
						<br />
						<span>Edition : </span><xsl:value-of select="edition" />
						<br />
						<span>Parution : </span><xsl:value-of select="parution" />
					</p>
					</td>
				</tr>
				<tr>
					<td colspan="2"><span>Description : </span><br /><xsl:value-of select="livre/description" /></td>
				</tr>
				</table>
			</xsl:for-each>
		</ul>
	</body>
</html>

</xsl:template>
</xsl:stylesheet>
