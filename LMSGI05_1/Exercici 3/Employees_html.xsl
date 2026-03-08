<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes" encoding="UTF-8"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Llista d'empleats</title>
                <style>
                    body {
                        font-family: "Times New Roman", serif;
                    }

                    h2 {
                        font-size: 32px;
                        font-weight: bold;
                    }

                    h3 {
                        color: blue;
                        font-size: 22px;
                        margin-bottom: 8px;
                    }

                    .nom-empleat {
                        font-size: 18px;
                    }

                    .camp {
                        font-weight: bold;
                    }

                    .oficina {
                        color: red;
                        font-style: italic;
                    }

                    .oficina .camp {
                        font-weight: bold;
                    }
                </style>
            </head>
            <body>
                <h2>Llista d'empleats</h2>

                <ul>
                    <xsl:for-each select="employees/employee">
                        <xsl:sort select="firstName" data-type="text" order="ascending"/>

                        <li>
                            <h3>
                                <xsl:text>Empleat amb id </xsl:text>
                                <xsl:value-of select="@id"/>
                            </h3>

                            <ul>
                                <li>
                                    <span class="camp">Nom:</span>
                                    <span class="nom-empleat">
                                        <xsl:value-of select="firstName"/>
										<xsl:text> </xsl:text>
                                        <xsl:value-of select="lastName"/>
                                    </span>
                                </li>

                                <li>
                                    <span class="camp">Correu:</span>
                                    <xsl:value-of select="email"/>
                                </li>

                                <li>
                                    <span class="camp">Id del seu superior:</span>
                                    <xsl:value-of select="reportsTo"/>
                                </li>

                                <li>
                                    <span class="camp">Posició:</span>
                                    <xsl:value-of select="jobTitle"/>
                                </li>

                                <li>
                                    <span class="camp">Oficina amb codi:</span>
                                    <xsl:value-of select="office/@code"/>

                                    <ul class="oficina">
                                        <li>
                                            <span class="camp">Telèfon:</span>
                                            <xsl:value-of select="office/phone"/>
                                        </li>
                                        <li>
                                            <span class="camp">Adreça:</span>
                                            <xsl:value-of select="office/addressLine1"/>
                                            <xsl:if test="normalize-space(office/addressLine2) != ''">
                                                <xsl:text>, </xsl:text>
                                                <xsl:value-of select="office/addressLine2"/>
                                            </xsl:if>
                                        </li>
                                        <li>
                                            <span class="camp">Estat:</span>
                                            <xsl:choose>
                                                <xsl:when test="normalize-space(office/state) != ''">
                                                    <xsl:value-of select="office/state"/>
                                                </xsl:when>
                                                <xsl:otherwise>NULL</xsl:otherwise>
                                            </xsl:choose>
                                        </li>
                                        <li>
                                            <span class="camp">País:</span>
                                            <xsl:value-of select="office/country"/>
                                        </li>
                                        <li>
                                            <span class="camp">Codi Postal:</span>
                                            <xsl:value-of select="office/postalCode"/>
                                        </li>
                                        <li>
                                            <span class="camp">Territori:</span>
                                            <xsl:value-of select="office/territory"/>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>

                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>