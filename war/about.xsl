<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom"
	xmlns="http://www.w3.org/1999/xhtml" xmlns:xhtml="http://www.w3.org/1999/xhtml"
	xmlns:fb="http://ogp.me/ns/fb#" exclude-result-prefixes="xhtml">
	
	<xsl:include href="header.xsl" />
	<xsl:include href="footer.xsl" />
	
 	<xsl:template match="/">
	
		<xsl:call-template name="header"></xsl:call-template>
		
		<p>
		Darrell Dupas lives and works in Redwater, AB, CA. He has a focus on the arts and considers
		computers a big part of modern art. Database programming and system repairs may seem a long
		way from art to most, but not at designr8.com. Making a computer work for you is rewarding
		in its own way and requires discipline.
		</p>
		<p>
		Designr8 specializes in database software, desktop or internet based. We have experience with J2EE, LAMP,
		Microsoft Office and XML. We are unbiased towards technology and willing to dabble in anything.
		</p>
		
		<h2>Social Media Footprint</h2>
			
		<ul>
								<li>
									<a href="https://github.com/semisided1">GitHub</a>
								</li>
								<li>
									<a href="https://plus.google.com/u/0/118134990318051975731">G+</a>
								</li>
								<li>
									<a href="http://semisided1.deviantart.com/">DeviantArt</a>
								</li>
								<li>
									<a href="https://www.facebook.com/pages/Designr8com/154274654593875">Facebook</a>
								</li>
								<li>
									<a href="https://twitter.com/semisided1">Twitter</a>
								</li>
								
							</ul>
							<ul>
								<li>Online websites by Designr8</li>
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
	</xsl:template>
</xsl:stylesheet>