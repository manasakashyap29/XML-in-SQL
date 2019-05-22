<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Query3</h2>
  <xsl:apply-templates/>
  </body>
  </html>
</xsl:template>

<xsl:template match="warehouses">
  <ul>
  Sum of all sunscreen in Indonesia:<xsl:value-of select="sum(warehouse[address/country='Indonesia']/items/item[name = 'Sunscreen']/qty)"/>
  </ul>
</xsl:template>

</xsl:stylesheet>
