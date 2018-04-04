<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match = "/">
<html>
	<body>
	<h1>EVENT MANAGEMENT</h1>
		<table border="1">
			<tr>
				<th>Event Name</th>
				<th>Description</th>
				<th>Level</th>
				<th>Department</th>
				<th>Contact</th>
				<th>Email</th>
			</tr>
		
			<xsl:for-each select="mainevent/event">
				<tr>
					<td><xsl:value-of select= "Eventname" /></td>
					<td><xsl:value-of select= "Data" /></td>
					<td><xsl:value-of select= "Department" /></td>
					<td><xsl:value-of select= "Resourceperson" /></td>
					<td><xsl:value-of select= "Contact" /></td>
					<td><xsl:value-of select= "Email" /></td>
				</tr>
			</xsl:for-each>
		</table>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>