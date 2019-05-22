<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Query a</h2>
  <xsl:apply-templates/>
  </body>
  </html>
</xsl:template>

<xsl:template match="warehouses">
  <table>
  <td><xsl:apply-templates select="warehouse[address/country='Singapore']"/></td>
  </table>
</xsl:template>

<xsl:template match="warehouse[address/country='Singapore']">
  <table>
  <xsl:text>&#xa;</xsl:text>
  <th>Warehouse Name</th>
  <td><xsl:value-of select="name"/></td>
  </table>
  <table>
  <xsl:text>&#xa;</xsl:text>
  <xsl:apply-templates select="items/item[qty>975]"/>
  </table>
</xsl:template>


<xsl:template match="items/item[qty>975]">
  <table>
  <xsl:text>&#xa;</xsl:text>
  <ul>
  <th>Item Name:</th>
  <td><xsl:value-of select="name"/></td>
  </ul>
  <ul>
  <th>Quantity:</th>
  <td><xsl:value-of select="qty"/></td>
  </ul>
  </table>
</xsl:template>



</xsl:stylesheet>

