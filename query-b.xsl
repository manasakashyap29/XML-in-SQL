<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Query2</h2>
  <xsl:apply-templates/>
  </body>
  </html>
</xsl:template>

<xsl:template match="warehouses">
  <xsl:apply-templates select="warehouse[address/country='Singapore' or address/country='Malaysia']"/>
</xsl:template>

<xsl:template match="warehouse[address/country='Singapore' or address/country='Malaysia']">
  <li>
  <xsl:text>&#xa;</xsl:text>
  <th>Warehouse Name:  </th>
  <td><xsl:value-of select="name"/></td>
  </li>
  <ul>
  <th>Item of largest quantity:  </th>
  <td><xsl:value-of select="items/item[not(../item/qty &gt; qty)]/name"/></td>
  </ul>
</xsl:template>

</xsl:stylesheet>
