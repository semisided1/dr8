<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom"
	xmlns="http://www.w3.org/1999/xhtml" xmlns:xhtml="http://www.w3.org/1999/xhtml"
	xmlns:fb="http://ogp.me/ns/fb#" exclude-result-prefixes="xhtml">
	

<xsl:include href="header.xsl" />
<xsl:include href="footer.xsl" />

<xsl:template match="/">

		<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://ogp.me/ns/fb#">
			<head>
				<link href='http://fonts.googleapis.com/css?family=Old+Standard+TT'
					rel='stylesheet' type='text/css' />
				<link rel="stylesheet" type="text/css" href="bloglist.css" />
			</head>
			<body>
			
			<xsl:call-template name="header"></xsl:call-template> 
			
			<xsl:apply-templates />
			
 			<xsl:call-template name="footer"></xsl:call-template>

			</body>
		</html>

</xsl:template>


<!-- <xsl:template match="atom:feed">  match feed xmlns="http://www.w3.org/1999/xhtml" -->
			
<!-- 	</xsl:template> -->

	<xsl:template match="atom:feed/atom:entry">
		<div class="atomentry">
			<xsl:element name="a">
				<xsl:attribute name="href">
			    <xsl:value-of select="atom:id" />
			    </xsl:attribute>
			    
			    
			    <div class="thumbdiv">
					<xsl:element name="img">
						<xsl:attribute name="src">
					<xsl:value-of select="atom:thumbnail" />
				</xsl:attribute>
						<xsl:attribute name="class">
					thumb
				</xsl:attribute>
					</xsl:element>
				</div>
			    
				<xsl:value-of select="atom:title" />
				
			</xsl:element>
			
			
			<div class="atomupdated">
			<xsl:value-of select="atom:updated" />
			</div>
			


			<xsl:value-of select="atom:summary" />
			

		</div>
		<xsl:apply-templates />
	</xsl:template>


	<xsl:template match="text()" />
</xsl:stylesheet>
