<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="cv/Langues">
		<section>
		<h2>Compétences linguistiques</h2>
		<table>				
			<xsl:apply-templates select="Langue"/>	
		</table>
		</section>
	</xsl:template>

	<xsl:template match="Langue">
		<tr>
			<th><xsl:value-of select="NomLangue"/></th>
			<td>
				<xsl:apply-templates select="Competence"/>	
			</td>
		</tr>
	</xsl:template>

	<xsl:template match="Competence">
			<p>
				<xsl:value-of select="current()"/>	
			</p>
	</xsl:template>

<!---
                          Informatique                                         
-->

	<xsl:template match="cv/Informatique">
		<section>
		<h2>Compétences informatiques</h2>
		<table>				
<!--
			<tr>
				<th>Gestion de données</th>
				<td>
					<ul>
						<xsl:apply-templates select="Logiciel[Domaine='Données']"/>	
					</ul>
				</td>
			</tr>
-->
			<tr>
				<th>Bureautique</th>
				<td>
					<ul>
						<xsl:apply-templates select="Logiciel[Domaine='Bureautique']"/>	
					</ul>
				</td>
			</tr>
		</table>
		</section>
	</xsl:template>

	<xsl:template match="Logiciel[Domaine='Bureautique']">
		<li><xsl:apply-templates select="Nom"/></li>	
	</xsl:template>

	<xsl:template match="Logiciel[Domaine='Données']">
		<li><xsl:apply-templates select="Nom"/></li>	
	</xsl:template>

</xsl:stylesheet>
