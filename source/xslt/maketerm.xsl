<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet xmlns:xsl='http://www.w3.org/1999/XSL/Transform' version='1.0'>

  <xsl:output method='html'/>

  <xsl:template match='/'>
    <html>
      <head>
        <title><xsl:value-of select='/term/@name'/></title>
        <link rel='stylesheet' type='text/css' href='style.css'/>
        <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
        <meta name='DC.Creator' content='Peter Saint-Andre'/>
        <meta name='DC.Rights' content='http://creativecommons.org/publicdomain/zero/1.0/'/>
        <meta name='viewport' content='width=device-width'/>
      </head>
      <body>
        <h2><xsl:value-of select='/term/@name'/></h2>
        <blockquote>
          <p><em>[<xsl:value-of select='/term/source'/>]</em></p>
          <ol>
            <xsl:apply-templates select='/term/def'/>
          </ol>
        </blockquote>
        <p><a href='/'>The Ism Book</a> by <a href='http://stpeter.im/'>Peter Saint-Andre</a></p>
        <p><a href='http://creativecommons.org/publicdomain/zero/1.0/'>No Rights Reserved</a></p>
      </body>
    </html>
  </xsl:template>

  <xsl:template match='def'>
    <li><p>(<xsl:value-of select='@topic'/>) <xsl:apply-templates/></p></li>
  </xsl:template>

  <xsl:template match='a'>
    <a>
      <xsl:attribute name='href'><xsl:value-of select='@href'/></xsl:attribute>
      <xsl:apply-templates/>
    </a>    
  </xsl:template>

</xsl:stylesheet>
