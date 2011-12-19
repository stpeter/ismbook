<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet xmlns:xsl='http://www.w3.org/1999/XSL/Transform' version='1.0' xmlns:dc="http://purl.org/dc/elements/1.1/">

  <xsl:output method='xml' indent='yes'/>

  <xsl:template match='/'>
    <rss version="2.0" xmlns:dc="http://purl.org/dc/elements/1.1/">
      <channel>
        <title>The Ism Book</title>
        <link>http://www.ismbook.com/</link>
        <description>An intellectual "field guide" to philosophy, religion, politics, science, the arts, and related disciplines.</description>
        <language>en-US</language>
        <copyright>Public Domain</copyright>
        <webMaster>stpeter@jabber.org</webMaster>
        <dc:creator>Peter Saint-Andre</dc:creator>
        <dc:date><xsl:value-of select='/changelog/change[position()=1]/date'/>T<xsl:value-of select='/changelog/change[position()=1]/time'/>:00-07:00</dc:date>
        <xsl:apply-templates select='/changelog/change'/>
      </channel>
    </rss>
  </xsl:template>

  <xsl:template match='change'>
    <item>
      <title>Changes to the Ism Book for <xsl:value-of select='date'/></title>
      <link>http://www.ismbook.com/</link>
      <dc:date><xsl:value-of select='date'/>T<xsl:value-of select='time'/>:00-07:00</dc:date>
      <description>
        <xsl:value-of select='text'/>
        <xsl:text> (</xsl:text>
        <xsl:value-of select='author'/>
        <xsl:text>)</xsl:text>
      </description>
    </item>
  </xsl:template>

</xsl:stylesheet>
