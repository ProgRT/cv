<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<meta charsset="utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
				<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.0/normalize.min.css" />
				<link rel="stylesheet" href="style.css" />
				<link rel="stylesheet" href="screen.css" media="screen" />
				<link rel="stylesheet" href="print.css" media="print" />
			</head>
			<body>
				<div id="page">
					<header>
					<xsl:apply-templates select="cv/Nom"/>
					<xsl:apply-templates select="cv/Coordonnees"/>
					</header>
					<xsl:apply-templates select="cv/Experiences"/>
					<xsl:apply-templates select="cv/Certifications"/>
					<xsl:apply-templates select="cv/Formations"/>
					<xsl:apply-templates select="cv/Publications"/>
					<xsl:apply-templates select="cv/Informatique"/>
					<xsl:apply-templates select="cv/Langues"/>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet> 
