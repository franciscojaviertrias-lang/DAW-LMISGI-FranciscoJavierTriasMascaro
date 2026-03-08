<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="/">
        <customers>
            <xsl:apply-templates select="resultset/row"/>
        </customers>
    </xsl:template>

    <xsl:template match="row">
        <customer customerNumber="{field[@name='customerNumber']}">
            <customerName>
                <xsl:value-of select="field[@name='customerName']"/>
            </customerName>
            <contactLastName>
                <xsl:value-of select="field[@name='contactLastName']"/>
            </contactLastName>
            <contactFirstName>
                <xsl:value-of select="field[@name='contactFirstName']"/>
            </contactFirstName>
            <phone>
                <xsl:value-of select="field[@name='phone']"/>
            </phone>
            <addressLine1>
                <xsl:value-of select="field[@name='addressLine1']"/>
            </addressLine1>
            <addressLine2>
                <xsl:value-of select="field[@name='addressLine2']"/>
            </addressLine2>
            <city>
                <xsl:value-of select="field[@name='city']"/>
            </city>
            <state>
                <xsl:value-of select="field[@name='state']"/>
            </state>
            <postalCode>
                <xsl:value-of select="field[@name='postalCode']"/>
            </postalCode>
            <country>
                <xsl:value-of select="field[@name='country']"/>
            </country>
            <salesRepEmployeeNumber>
                <xsl:value-of select="field[@name='salesRepEmployeeNumber']"/>
            </salesRepEmployeeNumber>
            <creditLimit>
                <xsl:value-of select="field[@name='creditLimit']"/>
            </creditLimit>
        </customer>
    </xsl:template>

</xsl:stylesheet>