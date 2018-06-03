<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="cv/Projets">
		<section>
		<h2>Projets personnels</h2>
		<table>
			<xsl:apply-templates select="Projet"/>	
		</table>
		</section>
	</xsl:template>

	<xsl:template match="Projet">
									<xsl:variable name='Page' select="Page"/>
		<tr>
			<th><xsl:value-of select="Nom"/></th>
			<td>
				<p><xsl:value-of select="Description"/></p>
				<p class="institution">
												<a href="{$Page}">
					<xsl:value-of select="Page"/>
												</a>
				</p>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet> 
