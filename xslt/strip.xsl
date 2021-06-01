<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0">
    
    <!-- Whenever you match any node or any attribute -->
    <xsl:template match="node()|@*" name="strip" mode="pass1">
        
        <!-- Copy the current node -->
        <xsl:copy>
            
            <!-- Including any attributes it has and any child nodes -->
            <xsl:apply-templates select="@*|node()" mode="pass1"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="emphasis" mode="pass1">
        <xsl:comment><xsl:text>emphasis removed</xsl:text></xsl:comment>
        <xsl:apply-templates/>
    </xsl:template>
</xsl:stylesheet>
