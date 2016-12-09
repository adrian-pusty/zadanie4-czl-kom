<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent="yes"/>
	<xsl:template match="/">
		
				<xsl:for-each select="Zadanie3/Książki_Powyżej500_stron/book">
					<xsl:value-of select="substring(concat(title,  '                              '), 0, 30)"/><!--<xsl:text>&#32;</xsl:text>--> 
					<xsl:value-of select="substring(concat(author, '                    '), 0, 20)"/>          <!--<xsl:text>&#32;</xsl:text>-->
					<xsl:value-of select="substring(concat(pages,  '          '), 0, 10)"/>			           <!--<xsl:text>&#32;</xsl:text>-->
					<xsl:value-of select="substring(concat(genre,  '                              '), 0, 30)"/><!--<xsl:text>&#32;</xsl:text>-->
					<xsl:value-of select="substring(concat(rating, '                    '), 0, 20)"/>          <!--<xsl:text>&#32;</xsl:text>-->
					<xsl:value-of select="substring(concat(price,  '          '), 0, 10)"/>					   <!--<xsl:text>&#32;</xsl:text>-->
					<xsl:value-of select="substring(concat(vat,    '          '), 0, 10)"/>					   <!--<xsl:text>&#32;</xsl:text>--> 
					<xsl:text>&#10;</xsl:text>
				</xsl:for-each>	

	</xsl:template>

    <xsl:template name="append-pad">
        <xsl:param name="length" select="0"/>
        <xsl:if test="$length != 0">
            <xsl:value-of select="'&#32;'"/>
            <xsl:call-template name="append-pad">
                <xsl:with-param name="length" select="$length - 1"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>