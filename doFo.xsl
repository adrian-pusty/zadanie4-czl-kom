<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" 	xmlns:fo="http://www.w3.org/1999/XSL/Format"
								xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" encoding="utf-8" indent="yes"/>
<xsl:template match="/">
	<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
		<fo:layout-master-set>	
			<fo:simple-page-master master-name="A4" page-width="210mm" page-height="297mm" margin-top="1cm" margin-bottom="1cm" margin-left="1cm" margin-right="1cm">	
				<fo:region-body margin="3cm"/> 
				<fo:region-before extent="2cm" background-color="#DDDDDD"/> 
				<fo:region-after extent="2cm" background-color="#000000"/> 
				<fo:region-start extent="1cm"/> 
				<fo:region-end extent="1cm"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
		
		<fo:page-sequence master-reference="A4" font-family="Arial">
			<fo:static-content flow-name="xsl-region-after">
				<fo:block margin-top="15pt" text-align="center" font-weight="bold" font-size="18pt" color="#FFFFFF" font-style="italic"> str. <fo:page-number/>
				</fo:block>
			</fo:static-content>
			<fo:static-content flow-name="xsl-region-before">
				<fo:block text-align="start" font-size="12pt" font-style="italic" font-weight="bold" color="#FFFFFF"> Zadanie 4. Programowanie CZŁ-KOM </fo:block>
				<fo:block text-align="start" font-size="9pt" font-style="italic" color="#FFFFFF"> Autorzy: Jaromir Bergiel i Adrian Pusty </fo:block>
			</fo:static-content>	
			<fo:flow flow-name="xsl-region-body" font-family="Arial">
			<fo:block border-width="2.0pt" border-style="solid" border-color="#000000" background-color="#FFFFEE" space-after="10mm" font-size="10pt"> 
				<fo:block font-weight="bold" font-family="Arial" font-size="14pt" margin-top="3pt" text-align="center">Książki powyżej 500 stron: </fo:block>		
				<xsl:for-each select="Zadanie3/Książki_Powyżej500_stron/book">
					<fo:list-block margin-top="15pt" margin-left="10pt" space-before="10mm">
						<fo:list-item>
							<fo:list-item-label> <fo:block font-weight="bold">Tytuł: </fo:block></fo:list-item-label> 
							<fo:list-item-body><fo:block margin-left="5em" text-decoration="underline"><xsl:value-of select="title"/></fo:block> </fo:list-item-body>
						</fo:list-item> 
						<fo:list-item>
							<fo:list-item-label> <fo:block font-weight="bold">Autor: </fo:block></fo:list-item-label> 
							<fo:list-item-body><fo:block margin-left="5em"><xsl:value-of select="author"/></fo:block></fo:list-item-body>
						</fo:list-item>
						<fo:list-item>
							<fo:list-item-label> <fo:block font-weight="bold">Strony: </fo:block></fo:list-item-label> 
							<fo:list-item-body><fo:block margin-left="5em"><xsl:value-of select="pages"/></fo:block></fo:list-item-body>
						</fo:list-item>
						<fo:list-item>
							<fo:list-item-label> <fo:block font-weight="bold">Dział: </fo:block></fo:list-item-label> 
							<fo:list-item-body><fo:block margin-left="5em"><xsl:value-of select="genre"/></fo:block></fo:list-item-body>
						</fo:list-item>
						<fo:list-item>
							<fo:list-item-label> <fo:block font-weight="bold">Cena: </fo:block></fo:list-item-label> 
							<fo:list-item-body><fo:block margin-left="5em"><xsl:value-of select="price"/></fo:block></fo:list-item-body>
						</fo:list-item>
						<fo:list-item>
							<fo:list-item-label> <fo:block font-weight="bold">VAT: </fo:block></fo:list-item-label> 
							<fo:list-item-body><fo:block margin-left="5em"><xsl:value-of select="vat"/></fo:block></fo:list-item-body>
						</fo:list-item>
						<fo:list-item>
							<fo:list-item-label> <fo:block font-weight="bold">Ocena: </fo:block></fo:list-item-label> 
							<fo:list-item-body><fo:block margin-left="5em"><xsl:value-of select="rating"/></fo:block></fo:list-item-body>
						</fo:list-item>
				</fo:list-block>
				<fo:block color="#AAAAAA">- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</fo:block>
				</xsl:for-each>
			</fo:block>	
			<fo:block border-width="2.0pt" border-style="solid" border-color="rgb(15, 57, 136)" background-color="rgb(135,216,247)" space-after="10mm" font-size="10pt">
				<fo:block font-weight="bold" font-family="Arial" font-size="14pt" margin-top="3pt" text-align="center">Książki poniżej 500 stron: </fo:block>		
				<xsl:for-each select="Zadanie3/Książki_Poniżej500_stron/book">
					<fo:list-block margin-top="15pt" margin-left="10pt" space-before="10mm">
						<fo:list-item>
							<fo:list-item-label> <fo:block font-weight="bold">Tytuł: </fo:block></fo:list-item-label> 
							<fo:list-item-body><fo:block margin-left="5em" text-decoration="underline"><xsl:value-of select="title"/></fo:block> </fo:list-item-body>
						</fo:list-item> 
						<fo:list-item>
							<fo:list-item-label> <fo:block font-weight="bold">Autor: </fo:block></fo:list-item-label> 
							<fo:list-item-body><fo:block margin-left="5em"><xsl:value-of select="author"/></fo:block></fo:list-item-body>
						</fo:list-item> 
						<fo:list-item>
							<fo:list-item-label> <fo:block font-weight="bold">Strony: </fo:block></fo:list-item-label> 
							<fo:list-item-body><fo:block margin-left="5em"><xsl:value-of select="pages"/></fo:block></fo:list-item-body>
						</fo:list-item>
						<fo:list-item>
							<fo:list-item-label> <fo:block font-weight="bold">Dział: </fo:block></fo:list-item-label> 
							<fo:list-item-body><fo:block margin-left="5em"><xsl:value-of select="genre"/></fo:block></fo:list-item-body>
						</fo:list-item>
						<fo:list-item>
							<fo:list-item-label> <fo:block font-weight="bold">Cena: </fo:block></fo:list-item-label> 
							<fo:list-item-body><fo:block margin-left="5em"><xsl:value-of select="price"/></fo:block></fo:list-item-body>
						</fo:list-item>
						<fo:list-item>
							<fo:list-item-label> <fo:block font-weight="bold">VAT: </fo:block></fo:list-item-label> 
							<fo:list-item-body><fo:block margin-left="5em"><xsl:value-of select="vat"/></fo:block></fo:list-item-body>
						</fo:list-item>
						<fo:list-item>
							<fo:list-item-label> <fo:block font-weight="bold">Ocena: </fo:block></fo:list-item-label> 
							<fo:list-item-body><fo:block margin-left="5em"><xsl:value-of select="rating"/></fo:block></fo:list-item-body>
						</fo:list-item>
				</fo:list-block>
				<fo:block color="#888888">- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</fo:block>
				</xsl:for-each>
			</fo:block>
			<fo:block font-weight="bold" font-family="Arial" font-size="14pt" margin-top="3pt" text-align="center">PODSUMOWANIE:</fo:block>
				<fo:block border-width="1.5pt" border-style="solid" border-color="#000000" background-image="pomocniczy.svg" space-after="10mm" font-size="10pt">
						
						<!-- PODSUMOWANIE KSIAŻKI -->
						
						<fo:block color="#370ba5" font-size="15pt" font-style="italic" text-decoration="underline" space-after="5mm">KSIĄŻKI:</fo:block>
						<fo:table border="solid 2pt black" space-after="10mm" > 
							<fo:table-header>
							  <fo:table-row>
							    <fo:table-cell>
							      <fo:block font-weight="bold">Rodzaj grupowania</fo:block>
							    </fo:table-cell>
							    <fo:table-cell>
							      <fo:block font-weight="bold">Liczba</fo:block>
							    </fo:table-cell>
							  </fo:table-row>
							</fo:table-header>

							<fo:table-body>
							  <fo:table-row>
							    <fo:table-cell>
							      <fo:block>Ogółem:</fo:block>
							    </fo:table-cell>
							    <fo:table-cell>
							      <fo:block><xsl:value-of select="Zadanie3/Podsumowanie/Ksiązki/liczba_książek_ogółem"/></fo:block>
							    </fo:table-cell>
							  </fo:table-row>
							   <fo:table-row>
							    <fo:table-cell>
							      <fo:block>Książki powyżej 500 stron:</fo:block>
							    </fo:table-cell>
							    <fo:table-cell>
							      <fo:block><xsl:value-of select="Zadanie3/Podsumowanie/Ksiązki/liczba_książek_powyżej500str"/></fo:block>
							    </fo:table-cell>
							  </fo:table-row>
							  <fo:table-row>
							    <fo:table-cell>
							      <fo:block>Książki poniżej 500 stron:</fo:block>
							    </fo:table-cell>
							    <fo:table-cell>
							      <fo:block><xsl:value-of select="Zadanie3/Podsumowanie/Ksiązki/liczba_książek_poniżej500str"/></fo:block>
							    </fo:table-cell>
							  </fo:table-row>
							</fo:table-body>
						</fo:table>

						<!-- PODSUMOWANIE DZIAŁY -->
						
						<fo:block color="#370ba5" font-size="15pt" font-style="italic" text-decoration="underline" space-after="5mm">DZIAŁY:</fo:block>
						<fo:table border="solid 2pt black" space-after="10mm" >
							<fo:table-header>
							  <fo:table-row>
							    <fo:table-cell>
							      <fo:block font-weight="bold">Rodzaj grupowania</fo:block>
							    </fo:table-cell>
							    <fo:table-cell>
							      <fo:block font-weight="bold">Liczba</fo:block>
							    </fo:table-cell>
							  </fo:table-row>
							</fo:table-header>

							<fo:table-body>
							  <fo:table-row>
							    <fo:table-cell>
							      <fo:block>Liczba działów dla wszystkich książek:</fo:block>
							    </fo:table-cell>
							    <fo:table-cell>
							      <fo:block><xsl:value-of select="Zadanie3/Podsumowanie/Działy/liczba_działów__książek_ogółem"/></fo:block>
							    </fo:table-cell>
							  </fo:table-row>
							   <fo:table-row>
							    <fo:table-cell>
							      <fo:block>Liczba działów dla książek &gt; 500str:</fo:block>
							    </fo:table-cell>
							    <fo:table-cell>
							      <fo:block><xsl:value-of select="Zadanie3/Podsumowanie/Działy/liczba_działów__książek_powyżej500str"/></fo:block>
							    </fo:table-cell>
							  </fo:table-row>
							  <fo:table-row>
							    <fo:table-cell>
							      <fo:block>Liczba działów dla książek &lt; 500str:</fo:block>
							    </fo:table-cell>
							    <fo:table-cell>
							      <fo:block><xsl:value-of select="Zadanie3/Podsumowanie/Działy/liczba_działów__książek_poniżej500str"/></fo:block>
							    </fo:table-cell>
							  </fo:table-row>
							</fo:table-body>
						</fo:table>

						<!-- PODSUMOWANIE AUTORZY -->
						
						<fo:block color="#370ba5" font-size="15pt" font-style="italic" text-decoration="underline" space-after="5mm">AUTORZY:</fo:block>
						<fo:table border="solid 2pt black" space-after="10mm" >
							<fo:table-header>
							  <fo:table-row>
							    <fo:table-cell>
							      <fo:block font-weight="bold">Rodzaj grupowania</fo:block>
							    </fo:table-cell>
							    <fo:table-cell>
							      <fo:block font-weight="bold">Liczba</fo:block>
							    </fo:table-cell>
							  </fo:table-row>
							</fo:table-header>

							<fo:table-body>
							  <fo:table-row>
							    <fo:table-cell>
							      <fo:block>Autorzy ogółem:</fo:block>
							    </fo:table-cell>
							    <fo:table-cell>
							      <fo:block><xsl:value-of select="Zadanie3/Podsumowanie/Autorzy/liczba_autorów_ogółem"/></fo:block>
							    </fo:table-cell>
							  </fo:table-row>
							   <fo:table-row>
							    <fo:table-cell>
							      <fo:block>Autorzy książek powyżej 500 str:</fo:block>
							    </fo:table-cell>
							    <fo:table-cell>
							      <fo:block><xsl:value-of select="Zadanie3/Podsumowanie/Autorzy/liczba_autorów_powyżej500str"/></fo:block>
							    </fo:table-cell>
							  </fo:table-row>
							  <fo:table-row>
							    <fo:table-cell>
							      <fo:block>Autorzy książek poniżej 500 str:</fo:block>
							    </fo:table-cell>
							    <fo:table-cell>
							      <fo:block><xsl:value-of select="Zadanie3/Podsumowanie/Autorzy/liczba_autorów_poniżej500str"/></fo:block>
							    </fo:table-cell>
							  </fo:table-row>
							</fo:table-body>
							</fo:table>

						<!-- PODSUMOWANIE INNE -->
						
						<fo:block color="#370ba5" font-size="15pt" font-style="italic" text-decoration="underline" space-after="5mm">INNE:</fo:block>
						<fo:table border="solid 2pt black" space-after="10mm" >
							<fo:table-header>
							  <fo:table-row>
							    <fo:table-cell>
							      <fo:block font-weight="bold">Rodzaj grupowania</fo:block>
							    </fo:table-cell>
							    <fo:table-cell>
							      <fo:block font-weight="bold">Liczba</fo:block>
							    </fo:table-cell>
							  </fo:table-row>
							</fo:table-header>

							<fo:table-body>
							  <fo:table-row>
							    <fo:table-cell>
							      <fo:block>Średnia cena wszystkich książek:</fo:block>
							    </fo:table-cell>
							    <fo:table-cell>
							      <fo:block><xsl:value-of select="Zadanie3/Podsumowanie/Inne/średnia_cena_wszystkich"/></fo:block>
							    </fo:table-cell>
							  </fo:table-row>
							   <fo:table-row>
							    <fo:table-cell>
							      <fo:block>Średnia cena książek &gt; 500str:</fo:block>
							    </fo:table-cell>
							    <fo:table-cell>
							      <fo:block><xsl:value-of select="Zadanie3/Podsumowanie/Inne/średnia_cena_książek_powyzej500"/></fo:block>
							    </fo:table-cell>
							  </fo:table-row>
							  <fo:table-row>
							    <fo:table-cell>
							      <fo:block>Średnia cena książek &lt; 500str:</fo:block>
							    </fo:table-cell>
							    <fo:table-cell>
							      <fo:block><xsl:value-of select="Zadanie3/Podsumowanie/Inne/średnia_cena_książek_ponizej500"/></fo:block>
							    </fo:table-cell>
							  </fo:table-row>
							  <fo:table-row>
							    <fo:table-cell>
							      <fo:block>Data wygenerowania:</fo:block>
							    </fo:table-cell>
							    <fo:table-cell>
							      <fo:block><xsl:value-of select="Zadanie3/Podsumowanie/Inne/data_wygenerowania"/></fo:block>
							    </fo:table-cell>
							  </fo:table-row>
							</fo:table-body>
						</fo:table>
				</fo:block>
			</fo:flow>
		</fo:page-sequence>
	</fo:root>
</xsl:template>
</xsl:stylesheet>