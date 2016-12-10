<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 	xmlns:fo="http://www.w3.org/1999/XSL/Format"
								xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
	<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
		<fo:layout-master-set>	
			<fo:simple-page-master master-name="Strona" page-width="297mm" page-height="210mm" margin-top="1cm" margin-bottom="1cm" margin-left="1cm" margin-right="1cm">	
				<fo:region-body margin="3cm"/> 
				<fo:region-before extent="2cm"/> 
				<fo:region-after extent="2cm"/> 
				<fo:region-start extent="2cm"/> 
				<fo:region-end extent="2cm"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
		
		<fo:page-sequence master-reference="Strona">	
			<fo:flow flow-name="xsl-region-body">		
				<xsl:for-each select="Zadanie3/Książki_Powyżej500_stron/book">
					<fo:block><xsl:value-of select="title"/></fo:block>
				</xsl:for-each>	
			</fo:flow>
		</fo:page-sequence>
	</fo:root>
</xsl:template>
</xsl:stylesheet>