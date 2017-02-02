<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet xmlns:xsl='http://www.w3.org/1999/XSL/Transform' version='1.0'>

  <xsl:output method='html'/>

  <xsl:template match='/'>
    <html>
      <head>
        <title>The Ism Book: A Field Guide to Philosophy</title>
        <link rel='stylesheet' type='text/css' href='style.css'/>
        <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
        <meta name='DC.Creator' content='Peter Saint-Andre'/>
        <meta name='DC.Rights' content='http://creativecommons.org/publicdomain/zero/1.0/'/>
        <meta name='viewport' content='width=device-width'/>
      </head>
      <body>
        <h1>The Ism Book: A Field Guide to Philosophy</h1>
        <h2>by <a href='http://stpeter.im/'>Peter Saint-Andre</a></h2>
        <p>The currently featured <a href="ism.html">ism</a> is:</p>
        <blockquote class='featured'>
          <p>
            <a>
              <xsl:attribute name='href'><xsl:value-of select='/term/@id'/>.html</xsl:attribute>
              <xsl:value-of select='/term/@name'/> 
            </a> 
            <xsl:text>: </xsl:text>
            <xsl:apply-templates select='/term/def'/>
          </p>
        </blockquote>
        <form method='get' id='search' action='https://duckduckgo.com/'>Interested in something other than <xsl:value-of select='/term/@name'/>?  <a href="ismlist.html">Surf the list</a> or search <a href="about.html">the site</a>: <input type='hidden' name='sites' value='ismbook.com'/><input type='text' name='q' maxlength='255'/><input type='submit' value='DuckDuckGo Search' style='visibility: hidden;'/></form>
        <p><a href='http://creativecommons.org/publicdomain/zero/1.0/'>No Rights Reserved</a></p>
      </body>
    </html>
  </xsl:template>

  <xsl:template match='def'>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match='a'>
    <a>
      <xsl:attribute name='href'><xsl:value-of select='@href'/></xsl:attribute>
      <xsl:apply-templates/>
    </a>    
  </xsl:template>

</xsl:stylesheet>
