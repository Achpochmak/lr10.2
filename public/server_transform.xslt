<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <table class = 'table' border='1'>
      <thead>
        <tr>
          <th>Номер итерации</th>
          <th>Число</th>
          <th>Обратная запись</th>
          <th>Подтверждение теории</th>
        </tr>
      </thead>
      <xsl:for-each select="objects/object">
        <xsl:variable name="counter" select="position()"/>
        <tbody>
          <tr>
            <th>
              <xsl:value-of select="$counter"></xsl:value-of>
            </th>
            <th>
              <xsl:value-of select="num"></xsl:value-of>
            </th>
            <th>
              <xsl:value-of select="rev"></xsl:value-of>
            </th>
            <th>
              <xsl:value-of select="theory"></xsl:value-of>
            </th>
          </tr>
        </tbody>
      </xsl:for-each>
    </table>
  </xsl:template>
</xsl:stylesheet>