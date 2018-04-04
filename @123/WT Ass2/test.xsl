<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>Event Details</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Event Name</th>
      <th style="text-align:left">Event Date</th>
     <th style="text-align:left">Department</th> 
     <th style="text-align:left">Co-ordinator</th>
     <th style="text-align:left">Contact details</th>
    </tr>
    <xsl:for-each select="event/desp">
    <tr>
       <td><xsl:value-of select="Name"/></td>
      <td><xsl:value-of select="Date"/></td>
      <td><xsl:value-of select="Dept"/></td>
      <td><xsl:value-of select="Co-ord"/></td>
      <td><xsl:value-of select="Contact"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

