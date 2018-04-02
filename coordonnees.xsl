<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="cv/Nom">
		<h1><xsl:value-of select="current()"/></h1>
	</xsl:template>

	<xsl:template match="cv/Coordonnees">
		<div id="Coordonnees">
			<xsl:apply-templates select="Telephone"/>
			<xsl:apply-templates select="Courriel"/>	
		</div>
	</xsl:template>

	<xsl:template match="Courriel">
		<a href="mailto:{.}"><xsl:value-of select="current()"/></a>
	</xsl:template>

	<xsl:template match="Telephone">
		<a href="tel:{.}"><xsl:value-of select="current()"/></a>
	</xsl:template>

</xsl:stylesheet>
