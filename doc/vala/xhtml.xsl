<?xml version="1.0"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:output method="xml" indent="yes" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"/>
	<xsl:template match="/">
		<xsl:apply-templates select="html"/>
	</xsl:template>
	<xsl:template match="html">
		<html><xsl:apply-templates select="head|body"/></html>
	</xsl:template>
	<xsl:template match="head">
		<head>
			<xsl:apply-templates select="title"/>
			<link rel="stylesheet" type="text/css" href="default.css"/>
		</head>
	</xsl:template>
	<xsl:template match="title">
		<title><xsl:value-of select="."/></title>
	</xsl:template>
	<xsl:template match="body">
		<body>
			<div class="header">
				<a href="index.html"><xsl:value-of select="//title/text()"/></a>
			</div>
			<xsl:apply-templates select="h|p|section"/>
			<ul class="toc">
				<xsl:for-each select="section">
					<li>
						<a href="{@id}.html"><xsl:value-of select="h/text()"/></a>
						<xsl:if test="count(section) > 0">
							<ul>
								<xsl:for-each select="section">
									<li><a href="{../@id}.html#{@id}"><xsl:value-of select="h/text()"/></a></li>
								</xsl:for-each>
							</ul>
						</xsl:if>
					</li>
				</xsl:for-each>
			</ul>
		</body>
	</xsl:template>
	<xsl:template match="body/h">
		<h1><xsl:value-of select="text()"/></h1>
	</xsl:template>
	<xsl:template match="body/section">
		<xsl:document href="{@id}.html" method="xml" indent="yes">
			<html>
				<head>
					<title><xsl:value-of select="h/text()"/> - <xsl:value-of select="//title/text()"/></title>
					<link rel="stylesheet" type="text/css" href="default.css"/>
				</head>
				<body>
					<div class="header">
						<a href="index.html"><xsl:value-of select="//title/text()"/></a>
					</div>
					<xsl:apply-templates select="h|p|section"/>
				</body>
			</html>
		</xsl:document>
	</xsl:template>
	<xsl:template match="body/section/h">
		<h2><xsl:value-of select="text()"/></h2>
	</xsl:template>
	<xsl:template match="body/section/section">
		<xsl:apply-templates select="h|p|blockcode|section"/>
	</xsl:template>
	<xsl:template match="body/section/section/h">
		<h3><xsl:value-of select="text()"/><a id="{../@id}"><xsl:text> </xsl:text></a></h3>
	</xsl:template>
	<xsl:template match="p">
		<p><xsl:apply-templates select="text()|code"/></p>
	</xsl:template>
	<xsl:template match="code">
		<code><xsl:value-of select="text()"/></code>
	</xsl:template>
	<xsl:template match="blockcode">
		<pre><xsl:value-of select="text()"/></pre>
	</xsl:template>
</xsl:stylesheet>

