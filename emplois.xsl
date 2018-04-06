<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="cv/Experiences">
		<section>
			<h2>Expériences proffessionnelles</h2>
			<table>				
				<xsl:apply-templates select="Emploi"/>	
			</table>
		</section>
	</xsl:template>

	<xsl:template match="Emploi">
		<tr>
			<th><xsl:value-of select="Moment"/></th>
			<td>
				<p><xsl:value-of select="Titre"/></p>
				<p class="institution"><xsl:value-of select="Institution"/></p>
				<xsl:apply-templates select="Realisations"/>	
			</td>
		</tr>
	</xsl:template>

	<xsl:template match="Realisations">
		<ul>
			<xsl:apply-templates select="Realisation"/>	
		</ul>
	
	</xsl:template>

	<xsl:template match="Realisation">
		<li>
			<xsl:value-of select="current()"/>
		</li>
	</xsl:template>

</xsl:stylesheet>
