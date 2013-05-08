<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:atom="http://www.w3.org/2005/Atom" 
	xmlns="http://www.w3.org/1999/xhtml"
	xmlns:xhtml="http://www.w3.org/1999/xhtml"
	xmlns:fb="http://ogp.me/ns/fb#"
	exclude-result-prefixes="xhtml"
	>
<xsl:include href="footer.xsl"/>	
	
<!-- <xsl:output doctype="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/> --> 
<xsl:param name="title" />
<xsl:template match="atom:feed">  <!-- match feed xmlns="http://www.w3.org/1999/xhtml" -->
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en"
	xmlns:fb="http://ogp.me/ns/fb#">
	<head>
		<meta name="title" content="Designr8.com" />
		<meta name="author" content="Darrell Dupas darrell@designr8.com" />
		<meta name="description" content="Designr8.com" />
		<meta name="keywords"
			content="Redwater, Alberta, Web Design, Darrell Dupas, Edmonton, designr8.com" />
		
		<link href='http://fonts.googleapis.com/css?family=Old+Standard+TT' rel='stylesheet' type='text/css' />
		<link rel="stylesheet" TYPE="text/css" HREF="/blog.css" />
		
		<title>
			<xsl:value-of select="$title" />
		</title>
		
		<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-27501164-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
	</head>
<!-- -->
	<body>
			<div id="header">
				<h1>
					<xsl:value-of select="$title" />
				</h1>
				
			</div>
				<xsl:apply-templates />
	<xsl:call-template name="footer"></xsl:call-template>	
	</body>		
	</html>
</xsl:template>

<xsl:template match="atom:feed/atom:entry">
	<xsl:choose>
		<xsl:when test="$title=atom:title">
			<p>
				<xsl:value-of select="atom:updated" />
			</p>
			<div class="content">
			<xsl:apply-templates />
			</div>
		</xsl:when>
	</xsl:choose>
</xsl:template>

<xsl:template match="atom:feed/atom:entry/xhtml:content/*">
	
	<xsl:copy-of select="." copy-namespaces="no" />
	
</xsl:template>
	
<xsl:template match="text()" />
</xsl:stylesheet>
