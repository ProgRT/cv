<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="cv/Publications">
		<section>
		<h2>Publications</h2>
		<table>
			<xsl:apply-templates select="Publication"/>	
		</table>
		</section>
	</xsl:template>

	<xsl:template match="Publication">
		<tr>
			<th><xsl:value-of select="Date"/></th>
			<td>
				<p><xsl:value-of select="Titre"/></p>
				<p class="institution">
					<xsl:value-of select="Revue"/>,
					volume <xsl:value-of select="Volume"/>,
					numéro <xsl:value-of select="Numerot"/>.
				</p>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet> 
