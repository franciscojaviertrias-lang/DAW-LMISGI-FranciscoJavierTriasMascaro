<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes" encoding="UTF-8"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Customers</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                    }
                    h2 {
                        text-align: center;
                    }
                    table {
                        border-collapse: collapse;
                        width: 100%;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 6px;
                        text-align: left;
                    }
                    th {
                        background-color: #d9d9d9;
                    }
                </style>
            </head>
            <body>
                <h2>Lista de clientes</h2>

                <table>
                    <tr>
                        <th>Customer Number</th>
                        <th>Customer Name</th>
                        <th>Contact Last Name</th>
                        <th>Contact First Name</th>
                        <th>Phone</th>
                        <th>Address Line 1</th>
                        <th>Address Line 2</th>
                        <th>City</th>
                        <th>State</th>
                        <th>Postal Code</th>
                        <th>Country</th>
                        <th>Sales Rep Employee Number</th>
                        <th>Credit Limit</th>
                    </tr>

                    <xsl:for-each select="customers/customer">
                        <tr>
                            <td><xsl:value-of select="@customerNumber"/></td>
                            <td><xsl:value-of select="customerName"/></td>
                            <td><xsl:value-of select="contactLastName"/></td>
                            <td><xsl:value-of select="contactFirstName"/></td>
                            <td><xsl:value-of select="phone"/></td>
                            <td><xsl:value-of select="addressLine1"/></td>
                            <td><xsl:value-of select="addressLine2"/></td>
                            <td><xsl:value-of select="city"/></td>
                            <td><xsl:value-of select="state"/></td>
                            <td><xsl:value-of select="postalCode"/></td>
                            <td><xsl:value-of select="country"/></td>
                            <td><xsl:value-of select="salesRepEmployeeNumber"/></td>
                            <td><xsl:value-of select="creditLimit"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>