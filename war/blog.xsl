<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:atom="http://www.w3.org/2005/Atom" 
	xmlns="http://www.w3.org/1999/xhtml"
	xmlns:xhtml="http://www.w3.org/1999/xhtml"
	xmlns:fb="http://ogp.me/ns/fb#"
	exclude-result-prefixes="xhtml"
	>
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


<div class="ad">
			<script type="text/javascript">
				<xsl:comment>
					google_ad_client = "ca-pub-7326905713177295";
					/* designr8 */
					google_ad_slot = "1639107101";
					google_ad_width = 250;
					google_ad_height = 250;
					//
				</xsl:comment>
			</script>
			<script type="text/javascript"
				src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
			</script>
		</div>
		<div class="ad">
			<script type="text/javascript">
				<xsl:comment>
					google_ad_client = "ca-pub-7326905713177295";
					/* designr8 two */
					google_ad_slot = "1577198311";
					google_ad_width = 250;
					google_ad_height = 250;
					//
				</xsl:comment>
			</script>
			<script type="text/javascript"
				src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
			</script>
		</div>


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
	</body>		
	</html>
</xsl:template>

<xsl:template match="atom:feed/atom:entry">
	<xsl:choose>
		<xsl:when test="$title=atom:title">
			<p>
				<xsl:value-of select="atom:updated" />
			</p>
			<xsl:apply-templates />
		</xsl:when>
	</xsl:choose>
</xsl:template>

<xsl:template match="atom:feed/atom:entry/xhtml:content/*">
	<xsl:copy-of select="." copy-namespaces="no" />
</xsl:template>
	
<xsl:template match="text()" />
</xsl:stylesheet>
