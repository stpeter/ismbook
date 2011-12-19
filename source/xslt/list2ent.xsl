<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet xmlns:xsl='http://www.w3.org/1999/XSL/Transform' version='1.0'>

  <xsl:output method='xml' encoding='UTF-8'/>

  <xsl:template match='/'>
    <xsl:apply-templates select='/terms/term'/>
  </xsl:template>

  <xsl:template match='term'>
    <xsl:text>openangle!ENTITY </xsl:text>
    <xsl:value-of select='@id'/>
    <xsl:text> "openanglea href='</xsl:text>
    <xsl:value-of select='@id'/>
    <xsl:text>.html'closeangle</xsl:text>
    <xsl:value-of select='@name'/>
    <xsl:text>openangle/acloseangle" closeangle</xsl:text>
  </xsl:template>

</xsl:stylesheet>
