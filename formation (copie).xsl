<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="cv/Formations">
		<section>
		<h2>Formation accadémique</h2>
		<table>				
			<xsl:apply-templates select="Formation"/>	
		</table>
		</section>
	</xsl:template>

	<xsl:template match="Formation">
		<tr>
			<th><xsl:value-of select="Moment"/></th>
			<td>
				<p><xsl:value-of select="Titre"/></p>
				<p class="institution"><xsl:value-of select="Institution"/></p>
			</td>
		</tr>
	</xsl:template>

<!---
			Certifications
-->

	<xsl:template match="cv/Certifications">
		<section>
		<h2>Certifications</h2>
		<table>				
				  <xsl:apply-templates select="Certification">
							 <xsl:sort select="Moment" order="descending"/>
				  </xsl:apply-templates>
		</table>
		</section>
	</xsl:template>

	<xsl:template match="Certification">
		<tr>
			<th><xsl:value-of select="Moment"/></th>
			<td>
				<p><xsl:value-of select="Titre"/></p>
				<p class="institution"><xsl:value-of select="Organisme"/></p>
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>
