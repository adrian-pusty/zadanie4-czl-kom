<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" 	xmlns:fo="http://www.w3.org/1999/XSL/Format"
								xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" encoding="utf-8" indent="yes"/>
<xsl:template match="/">
	<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
		<fo:layout-master-set>	
			<fo:simple-page-master master-name="A4" page-width="297mm" page-height="210mm" margin-top="1cm" margin-bottom="1cm" margin-left="1cm" margin-right="1cm">	
				<fo:region-body margin="3cm"/> 
				<fo:region-before extent="2cm"/> 
				<fo:region-after extent="2cm"/> 
				<fo:region-start extent="2cm"/> 
				<fo:region-end extent="2cm"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
		
		<fo:page-sequence master-reference="A4">
			<fo:static-content flow-name="xsl-region-after">
				<fo:block text-align="end" font-size="8pt"> Strona numer : <fo:page-number/>
				</fo:block>
			</fo:static-content>	
			<fo:flow flow-name="xsl-region-body" font-family="Arial"> 
				<fo:block font-weight="bold" font-family="Arial" font-size="14pt" space-after="5mm">Książki powyżej 500 stron: </fo:block>		
				<xsl:for-each select="Zadanie3/Książki_Powyżej500_stron/book">
					<fo:list-block space-after="20mm">
					<fo:list-item>
						<fo:list-item-label flow-name="xsl-region-before"> <fo:block>Tytuł: </fo:block></fo:list-item-label> 
						<fo:list-item-body><fo:block margin-left="5em"><xsl:value-of select="title"/></fo:block> </fo:list-item-body>
					</fo:list-item> 
					<fo:list-item>
						<fo:list-item-label> <fo:block>Autor: </fo:block></fo:list-item-label> 
						<fo:list-item-body><fo:block margin-left="5em"><xsl:value-of select="author"/></fo:block></fo:list-item-body>
					</fo:list-item> 
				</fo:list-block>
				</xsl:for-each>	
				<fo:block font-weight="bold" font-family="Arial" font-size="14pt" space-after="5mm">Książki poniżej 500 stron: </fo:block>		
				<xsl:for-each select="Zadanie3/Książki_Poniżej500_stron/book">
					<fo:list-block space-after="20mm">
					<fo:list-item>
						<fo:list-item-label> <fo:block>Tytuł: </fo:block></fo:list-item-label> 
						<fo:list-item-body><fo:block margin-left="5em"><xsl:value-of select="title"/></fo:block> </fo:list-item-body>
					</fo:list-item> 
					<fo:list-item>
						<fo:list-item-label> <fo:block>Autor: </fo:block></fo:list-item-label> 
						<fo:list-item-body><fo:block margin-left="5em"><xsl:value-of select="author"/></fo:block></fo:list-item-body>
					</fo:list-item> 
				</fo:list-block>
				</xsl:for-each>	
			</fo:flow>
		</fo:page-sequence>
	</fo:root>
</xsl:template>
</xsl:stylesheet>