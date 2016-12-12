<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
	<head>
		<title>Ma bibliothèque</title>
	</head>

	<body>
		<h3>Ma bibliothèque</h3>
		<ul>
			<xsl:for-each select="bibliotheque/livres">
				<xsl:sort select="livre/titre" order="descending" />
				<h5><xsl:value-of select="livre/titre" /></h5>
				<table border="1" width="800px" style="background-color:#FFFFCC">
				<tr>
					<td><img src="{couverture/@scr}"/></td>
					<td>Auteur(s) :
						<ul>
							<xsl:for-each select="livre/auteurs/auteur">
								<li><xsl:value-of select="." /></li>
							</xsl:for-each>
						</ul>
						<br />
						Editeur : <xsl:value-of select="livre/editeur" />
						<br />
						Pages : <xsl:value-of select="pages" />
						<br />
						Prix : <xsl:value-of select="prix" />
						<br />
						Edition : <xsl:value-of select="edition" />
						<br />
						Parution : <xsl:value-of select="parution" />
					</td>
				</tr>
				<tr>
					<td colspan="2">Description : <br /><xsl:value-of select="livre/description" /></td>
				</tr>
				</table>
			</xsl:for-each>
		</ul>
	</body>
</html>

</xsl:template>
</xsl:stylesheet>
