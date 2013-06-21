<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom"
	xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:fb="http://ogp.me/ns/fb#"
	xmlns:g="http://www.google.com" exclude-result-prefixes="xhtml xsl atom fb g">


	<xsl:include href="header.xsl" />
	<xsl:include href="footer.xsl" />

	<xsl:template match="/">


		<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://ogp.me/ns/fb#">
			<head>
				<link href='http://fonts.googleapis.com/css?family=Old+Standard+TT'
					rel='stylesheet' type='text/css' />
				<link rel="stylesheet" type="text/css" href="about.css" />
			</head>
			<body>


				<xsl:call-template name="header"></xsl:call-template>

				<p>
					Darrell Dupas lives and works in Redwater, AB, CA.
				</p>
				<p>
					Designr8 specializes in database software, desktop or internet based.
				</p>
				<p>
					skilled areas:
					<ul>
						<li>Databases with Microsoft Office Access</li>
						<li>Web based databases with Java, Google Appengine, J2EE</li>
						<li>Web development with html5, xml, javascript, java, css, jquery
						</li>
						<li>System and network repairs, Mac, Linux, Windows, Android,
							iphone</li>
					</ul>
				</p>
				<p>
					Free technology through knowledge!
				</p>
				<p>email darrell@designr8.com</p>
				<h2>Social Media</h2>

				<div class="social">
					
					<img id="octocat"
						src="https://a248.e.akamai.net/assets.github.com/images/modules/logos_page/GitHub-Mark.png" />
					<a href="https://github.com/semisided1">GitHub</a>
				</div>
				<div class="social">
						<g:plus href="https://plus.google.com/118134990318051975731"
							rel="author"></g:plus>
						<a href="https://plus.google.com/u/0/118134990318051975731">G+</a>
				</div>
			
			<div class="social">
						<a href="http://www.artbreak.com/semisided1">artbreak</a>
				</div>
					<div class="social">
					<div class="fb-follow" data-href="https://www.facebook.com/pages/Designr8com/154274654593875" data-show-faces="false" data-font="trebuchet ms" data-width="300"></div>
						<a href="https://www.facebook.com/pages/Designr8com/154274654593875">Facebook</a>
					</div>
					<div class="social">
					<a href="https://twitter.com/semisided1" class="twitter-follow-button" data-show-count="false" data-size="large">Follow @semisided1</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
						<a href="https://twitter.com/semisided1">Twitter</a>
					</div>

				
				<h2>Online websites by Designr8</h2>
				<ul>

					<li>
						<a href="http://www.stevenlaytonsphotography.ca/">stevenlaytonsphotography.ca</a>
					</li>
					<li>
						<a href="http://www.eclecticshots.com/">electicshots.com</a>
					</li>
					<li>
						<a href="http://www.snowbgone.ca/">snowbgone.ca</a>
					</li>
					<li>
						<a href="http://callpaulbobcat.com/">callpaulbobcat.com</a>
					</li>
				</ul>
				<xsl:call-template name="footer" />

			</body>
		</html>

	</xsl:template>
</xsl:stylesheet>