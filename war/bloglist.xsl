<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:atom="http://www.w3.org/2005/Atom" 
	xmlns="http://www.w3.org/1999/xhtml"
	xmlns:xhtml="http://www.w3.org/1999/xhtml"
    xmlns:fb="http://ogp.me/ns/fb#"
	exclude-result-prefixes="xhtml"
	>
<xsl:template match="atom:feed">  <!-- match feed xmlns="http://www.w3.org/1999/xhtml" -->
<!-- -->
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:fb="http://ogp.me/ns/fb#">
<head>
<link href='http://fonts.googleapis.com/css?family=Old+Standard+TT' rel='stylesheet' type='text/css' />
<link rel="stylesheet" type="text/css" href="bloglist.css" />
</head>
<body>			
<div id="header">
<h1>Designr8.com</h1>
</div>
	<div class="colmask rightmenu">
		<div class="colleft">
			<div class="col1wrap">
				<div class="col1">
				<xsl:apply-templates />
				</div>
				<!-- col1  -->
			</div>
			<!-- colwrap -->
		
		<!-- colleft -->

		<div class="col2">
		<ul>
		<li><a href="https://github.com/semisided1">GitHub Profile</a></li>
		<li><a href="https://plus.google.com/u/0/118134990318051975731">G+ Profile</a></li>
		<li><a href="http://semisided1.deviantart.com/">Devian Art Profile</a></li>
		<li><a href="https://www.facebook.com/pages/Designr8com/154274654593875">Designr8 on Facebook</a></li>
		<li><a href="https://twitter.com/semisided1">Darrell on Twitter</a></li>
		<li><a href="https://www.facebook.com/dirtslayer">Darrell on Facebook</a></li>
		</ul>
		<ul>
		<li>Sites by Designr8</li>
		<li><a href="http://www.topnotchgames.ca">topnotchgames.ca</a></li>
		<li><a href="http://www.stevenlaytonsphotography.ca/">stevenlaytonsphotography.ca</a></li>
		<li><a href="http://www.eclecticshots.com/">electicshots.com</a></li>
		<li><a href="http://www.snowbgone.ca/">snowbgone.ca</a></li>
		</ul>
	<!--	<script type="text/javascript">
google_ad_client = "ca-pub-7326905713177295";
/* slayton */
google_ad_slot = "9273749359";
google_ad_width = 200;
google_ad_height = 200;
//
</script> -->

</div>
	</div>
	</div>
	<div id="footer">
	
	
	<p>Designr8.com 2012</p>
	
	<div id="fb-root"></div>
		<script>
			(function(d, s, id) {
				var js, fjs = d.getElementsByTagName(s)[0];
				if (d.getElementById(id))
					return;
				js = d.createElement(s);
				js.id = id;
				js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1";
				fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk'));
		</script>
		<fb:like send="true"
			width="15em" show_faces="false"></fb:like>
		<div class="g-plusone" data-annotation="inline"></div>
		<script type="text/javascript">
			(function() {
				var po = document.createElement('script');
				po.type = 'text/javascript';
				po.async = true;
				po.src = 'https://apis.google.com/js/plusone.js';
				var s = document.getElementsByTagName('script')[0];
				s.parentNode.insertBefore(po, s);
			})();
		</script>
	</div>

		
				
</body></html>
</xsl:template>

<xsl:template match="atom:feed/atom:entry">
<div style="float:left;padding-top:20px;width:30em;">
			<xsl:element name="img">
				<xsl:attribute name="src">
					<xsl:value-of select="atom:thumbnail" />
				</xsl:attribute>
				<xsl:attribute name="style">
				float:left;clear:left;padding-right:5px;
				</xsl:attribute>
			</xsl:element>
			<xsl:element name="a">
				<xsl:attribute name="href">
			    <xsl:value-of select="atom:id"/>
			    </xsl:attribute>
				<xsl:value-of select="atom:title" />
			</xsl:element>
			<br/>
				<xsl:value-of select="atom:updated" />
				<br/>
				<xsl:value-of select="atom:summary" />
		    <br/><br/>
</div>
		<xsl:apply-templates />
</xsl:template>


<xsl:template match="text()" />
</xsl:stylesheet>
