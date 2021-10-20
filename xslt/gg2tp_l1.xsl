<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:tp="http://www.plazi.org/taxpub">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:template match="/">
        <xsl:apply-templates select="//treatment"/>
    </xsl:template>
    <xsl:template match="//treatment">
        <tp:treatment>
            <xsl:apply-templates/>
        </tp:treatment>
    </xsl:template>

    <xsl:template match="subSubSection[@type = 'nomenclature']">
        <tp:nomenclature>
            <xsl:apply-templates select=".//heading"/>
        </tp:nomenclature>
    </xsl:template>

    <xsl:template match="taxonomicName">
        <tp:taxon-name>
            <xsl:apply-templates/>
        </tp:taxon-name>
    </xsl:template>

    <xsl:template match="subSubSection">
        <tp:treatment-sec type="{@type}">
            <xsl:apply-templates/>
        </tp:treatment-sec>
    </xsl:template>

    <xsl:template match="paragraph">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <!--    
     <xsl:template match="text()">
        <xsl:value-of select="translate(.,' &#9;&#10;', ' ')"/>
    </xsl:template>
-->
</xsl:stylesheet>
