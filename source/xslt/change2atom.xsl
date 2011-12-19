<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet xmlns:xsl='http://www.w3.org/1999/XSL/Transform' version='1.0' xmlns:dc="http://purl.org/dc/elements/1.1/">

  <xsl:output method='xml' indent='yes'/>

  <xsl:template match='/'>
    <feed xml:lang="en-US" xmlns="http://www.w3.org/2005/Atom">
      <title>The Ism Book</title>
      <subtitle>An intellectual "field guide" to philosophy, religion, politics, science, the arts, and related disciplines.</subtitle>
      <id>tag:ismbook.com,2005-11-08:changelog</id>
      <link>
        <xsl:attribute name='rel'>self</xsl:attribute>
        <xsl:attribute name='type'>application/atom+xml</xsl:attribute>
        <xsl:attribute name='href'>http://www.ismbook.com/atom.xml</xsl:attribute>
      </link>
      <link>
        <xsl:attribute name='rel'>alternate</xsl:attribute>
        <xsl:attribute name='type'>text/html</xsl:attribute>
        <xsl:attribute name='href'>http://www.ismbook.com/</xsl:attribute>
      </link>
      <author>
        <name>Peter Saint-Andre</name>
        <uri>http://www.saint-andre.com/</uri>
      </author>
      <rights>Public Domain</rights>
      <updated><xsl:value-of select='/changelog/change[position()=1]/date'/>T<xsl:value-of select='/changelog/change[position()=1]/time'/>:00-07:00</updated>
      <xsl:apply-templates select='/changelog/change'/>
    </feed>
  </xsl:template>

  <xsl:template match='change'>
    <entry xmlns="http://www.w3.org/2005/Atom">
      <title>Changes to the Ism Book for <xsl:value-of select='date'/></title>
      <id>tag:ismbook.com,<xsl:value-of select='date'/>:changelog-<xsl:value-of select='date'/>T<xsl:value-of select='time'/>:00-07:00</id>
      <published><xsl:value-of select='date'/>T<xsl:value-of select='time'/>:00-07:00</published>
      <updated><xsl:value-of select='date'/>T<xsl:value-of select='time'/>:00-07:00</updated>
      <rights>Public Domain</rights>
      <summary>
        <xsl:value-of select='text'/>
        <xsl:text> (</xsl:text>
        <xsl:value-of select='author'/>
        <xsl:text>)</xsl:text>
      </summary>
      <content type='xhtml'><div xmlns='http://www.w3.org/1999/xhtml'><p><xsl:value-of select='text'/><xsl:text> (</xsl:text><xsl:value-of select='author'/><xsl:text>)</xsl:text></p></div></content>
    </entry>
  </xsl:template>
</xsl:stylesheet>
