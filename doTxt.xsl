<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent="yes"/>
	<xsl:template match="/">
		<xsl:variable name="maxtitleLength" select="distinct-values(//book[not(//book/string-length(title) > string-length(title))]/string-length(title))"/>
		<xsl:variable name="maxauthorLength" select="distinct-values(//book[not(//book/string-length(author) > string-length(author))]/string-length(author))"/>
		<xsl:variable name="maxpagesLength" select="distinct-values(//book[not(//book/string-length(pages) > string-length(pages))]/string-length(pages))"/>  		<xsl:variable name="maxgenreLength" select="distinct-values(//book[not(//book/string-length(genre) > string-length(genre))]/string-length(genre))"/>
		<xsl:variable name="maxratingLength" select="distinct-values(//book[not(//book/string-length(rating) > string-length(rating))]/string-length(rating))"/>
		<xsl:variable name="maxpriceLength" select="distinct-values(//book[not(//book/string-length(price) > string-length(price))]/string-length(price))"/>
		<xsl:variable name="maxvatLength" select="distinct-values(//book[not(//book/string-length(vat) > string-length(vat))]/string-length(vat))"/>
		
		<xsl:value-of select="concat('Lista', ' ksiazek:')"/>
		<xsl:text>&#10;</xsl:text>
		
			<xsl:value-of select="substring(concat('Tytul',  		'                                   '), 0, $maxtitleLength + 5)"/>
			<xsl:value-of select="substring(concat('Autor', 		'                                   '), 0, $maxauthorLength + 5)"/>          
			<xsl:value-of select="substring(concat('Stron',  		'                                   '), 0, $maxpagesLength + 5)"/>			          
			<xsl:value-of select="substring(concat('Gatunek',  	'                                   '), 0, $maxgenreLength + 5)"/>
			<xsl:value-of select="substring(concat('Ocena',		'                                   '), 0, $maxratingLength + 5)"/>         
			<xsl:value-of select="substring(concat('Cena',  		'                                   '), 0, $maxpriceLength + 5)"/>					   
			<xsl:value-of select="substring(concat('W tym VAT',    '                                   '), 0, $maxvatLength + 5)"/>					  
			<xsl:text>&#10;</xsl:text><xsl:text>&#10;</xsl:text>
							
		<xsl:for-each select="//book">
			<xsl:value-of select="substring(concat(title,  '                                   '), 0, $maxtitleLength + 5)"/>
			<xsl:value-of select="substring(concat(author, '                                   '), 0, $maxauthorLength + 5)"/>          
			<xsl:value-of select="substring(concat(pages,  '                                   '), 0, $maxpagesLength + 5)"/>			          
			<xsl:value-of select="substring(concat(genre,  '                                   '), 0, $maxgenreLength + 5)"/>
			<xsl:value-of select="substring(concat(rating, '                                   '), 0, $maxratingLength + 5)"/>         
			<xsl:value-of select="substring(concat(price,  '                                   '), 0, $maxpriceLength + 5)"/>					   
			<xsl:value-of select="substring(concat(vat,    '                                   '), 0, $maxvatLength + 5)"/>					  
			<xsl:text>&#10;</xsl:text>
			<!--<xsl:text>&#32;</xsl:text>-->
		</xsl:for-each>
		<xsl:text>&#10;</xsl:text><xsl:text>&#10;</xsl:text>	
	
			<xsl:text>Lista autorow:</xsl:text><xsl:text>&#10;</xsl:text>
			
			<xsl:value-of select="substring(concat('Nazwisko',	     '                                   '), 0, 25)"/>
			<xsl:text>Narodowosc</xsl:text><xsl:text>&#10;</xsl:text><xsl:text>&#10;</xsl:text>
	
		<xsl:for-each select="//Autorzy_narodowość/*">
			<xsl:value-of select="substring(concat(text(),	     '                                   '), 0, 25)"/>
			<xsl:value-of select="name(.)"/>
			<xsl:text>&#10;</xsl:text>
		</xsl:for-each>
	</xsl:template>

</xsl:stylesheet>