<?xml version="1.0"?>
<xsl:stylesheet version="1.0" 
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xlink="http://www.w3.org/1999/xlink"
		xmlns="http://www.w3.org/2000/svg"
		>
  
  <xsl:output
      method="html"
      indent="yes"
      standalone="no"
      encoding="UTF-8"
      doctype-public="-//W3C//DTD SVG 1.1//EN"
      doctype-system="http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"
      media-type="image/svg" />
  <xsl:variable name="documentHeight">1280</xsl:variable>
  <xsl:variable name="documentWidth">1200</xsl:variable>
      
  <xsl:strip-space elements="list"/>
  
  <xsl:template match="/">
    <svg xmlns="http://www.w3.org/2000/svg" width="{$documentWidth}" height="{$documentHeight}" font-family="Arial">
			<!--<xsl:variable name="numberOfBooks" select="count(//book)"/>-->
			<script type="text/javascript">
				<![CDATA[
				function changeWidth(evt) {
				var k = document.getElementById(evt);
				if ('beginElement' in k) {
					k.beginElement();}
				}

				function showLabels(){
					for (i = 1; i < 21 + 1; i++) {
						var k = document.getElementById(('numOfPages'.concat(i)));
						if(k.style.opacity == "1") {k.style.opacity = "0";}
						else {k.style.opacity = "1";}  
					console.log("showLabels");
					}
				}
				// ]]>
			</script>
			<!-- GRADIENT -->
			    <defs>
			        <linearGradient id="grad1" x1="0%" y1="0%" x2="0%" y2="100%">
			            <stop offset="0%" style="stop-color:rgb(255,255,255);stop-opacity:1" />
			            <stop offset="100%" style="stop-color:rgb(0,0,0);stop-opacity:1" />
			        </linearGradient>
			        <linearGradient id="grad2" x1="0%" y1="0%" x2="100%" y2="0%">
			            <stop offset="0%" style="stop-color:rgb(255,255,0);stop-opacity:1" />
			            <stop offset="100%" style="stop-color:rgb(255,50,0);stop-opacity:1" />
			        </linearGradient>
    			</defs>
    		<rect width="{$documentWidth}" height="{$documentHeight}" fill="url(#grad1)" />
			<text x="25"  y="25">Tytul ksiazki:</text>
			<text x="275" y="25" onclick="showLabels()">Ilosc stron:</text>
			<text x="25"  y="{count(//book) * 26 + 100}">Wybierz numer ksiazki:</text>
      <xsl:apply-templates/>
    </svg>
  </xsl:template>
  
  <xsl:template match="book">
			
		<xsl:variable name="pag" select="pages div 5"/>
		<!--<xsl:variable name="rat" select="rating"/>-->
		<!--<xsl:variable name="pri" select="price"/>-->
		<xsl:variable name="id" select="@id"/>
		<!--<xsl:variable name="titleLength" select="8 * string-length(title)"/>-->
	
	<text x="25"  y="{26*$id+50}" height="25" onmouseover="changeWidth('{concat('ruch1_', $id)}')">
		<title><xsl:value-of select="genre"/></title>
		<xsl:value-of select="substring(concat(title,  '                              '), 0, 35)" />
	</text>
	<rect id="{concat('bar', $id)}" x="275" y="{26*$id+35}" height="15" width="0" fill="url(#grad2)" stroke="black">
		   <animate 
		   id="{concat('ruch1_', $id)}"
           xlink:href="#{concat('bar', $id)}"
           attributeName="width"
           from="0"
           to="{$pag}" 
           dur="2s"
           begin="indefinite"
           fill="freeze"/>
	</rect>
	<text id="{concat('numOfPages', $id)}" x="550"  y="{26*$id+50}" opacity="0.0"><xsl:value-of select="pages" /></text>
	<a xlink:href="#{concat('bar', $id)}">
		<text x="{$id * 25}" y="{count(//book) * 26 + 125}" ><xsl:value-of select="@id"/></text>
	</a>
		
  </xsl:template>
  
  
</xsl:stylesheet>