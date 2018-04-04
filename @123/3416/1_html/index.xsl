<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  
  <body bgcolor="#E6E6FA">
  <h1 align="centre">SRS'S Institution</h1>
	
  <table border="2" width="100%">
  <tr bgcolor="lightgrey">
   
  <th>Event Name</th>
  <th></th>
  <th>Type</th>
  <th>Co-ordinator</th>
  <th>Information</th>
  <th>Fees</th>
  </tr>
<xsl:for-each select="college/event">
<tr>
<td>
<xsl:value-of select="@name"/></td>
<td><xsl:value-of select="image"/></td>
<td><xsl:value-of select="type"/></td>
<td><xsl:value-of select="co-ordinator"/></td>
<td><xsl:value-of select="info"/></td>
<td><xsl:value-of select="fees"/></td>
</tr>
</xsl:for-each>
</table>
   </body>
   </html>
</xsl:template>
</xsl:stylesheet>