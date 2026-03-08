<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" indent="yes"/>
<xsl:strip-space elements="*"/>

<!-- raíz -->
<xsl:template match="/">
    <employees>
        <xsl:apply-templates select="resultset/row"/>
    </employees>
</xsl:template>

<!-- cada empleado -->
<xsl:template match="row">

    <employee id="{field[@name='employeeNumber']}">

        <lastName>
            <xsl:value-of select="field[@name='lastName']"/>
        </lastName>

        <firstName>
            <xsl:value-of select="field[@name='firstName']"/>
        </firstName>

        <extension>
            <xsl:value-of select="field[@name='extension']"/>
        </extension>

        <email>
            <xsl:value-of select="field[@name='email']"/>
        </email>

        <reportsTo>
            <xsl:value-of select="field[@name='reportsTo']"/>
        </reportsTo>

        <jobTitle>
            <xsl:value-of select="field[@name='jobTitle']"/>
        </jobTitle>

        <!-- información de la oficina -->
        <office code="{field[@name='ofCode']}">

            <city>
                <xsl:value-of select="field[@name='ofCity']"/>
            </city>

            <phone>
                <xsl:value-of select="field[@name='ofPhone']"/>
            </phone>

            <addressLine1>
                <xsl:value-of select="field[@name='ofAdd1']"/>
            </addressLine1>

            <addressLine2>
                <xsl:value-of select="field[@name='ofAdd2']"/>
            </addressLine2>

            <state>
                <xsl:value-of select="field[@name='ofState']"/>
            </state>

            <country>
                <xsl:value-of select="field[@name='ofCountry']"/>
            </country>

            <postalCode>
                <xsl:value-of select="field[@name='ofPostalCode']"/>
            </postalCode>

            <territory>
                <xsl:value-of select="field[@name='ofTerritory']"/>
            </territory>

        </office>

    </employee>

</xsl:template>

</xsl:stylesheet>