<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" type="text/css" href="cancion.css"/>
			</head>
			<body>
				<h2>Canción:</h2>
				<h1><xsl:value-of select="cancion/texto/informacion/titulo"/></h1>
				<br/>
				<xsl:for-each select="cancion/texto/estrofa">
					<xsl:sort select="orden"/>
					<xsl:if test="tipo = 'estribillo'">
						<h4><span>ESTRIBILLO:</span></h4>
					</xsl:if>
					<xsl:for-each select="verso">
						<p class="verso"><xsl:value-of select="."/></p>
					</xsl:for-each>
					<br/>
				</xsl:for-each>
				<h4>Autor: <xsl:value-of select="cancion/texto/informacion/autor"/></h4>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>