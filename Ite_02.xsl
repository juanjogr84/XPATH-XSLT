<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <ite>
            <datosEmpresariales>
                <nombre><xsl:value-of select="ite/@nombre"/> </nombre>
                <web><xsl:value-of select="ite/@web"/> </web>
                <empresa><xsl:value-of select="ite/empresa"/> </empresa>
                <telefono><xsl:value-of select="ite/telefono"/> </telefono>
            </datosEmpresariales>
            <cuerpoDocente>
                <profesores>
                    <xsl:for-each select="ite/profesores">
                        <profesor>
                            <xsl:attribute name="id">
                                <xsl:value-of select="profesor[1]/id"/>
                            </xsl:attribute>
                            <nombre><xsl:value-of select="profesor[1]/nombre"/></nombre>
                        </profesor>
                        <profesor>
                            <xsl:attribute name="id">
                                <xsl:value-of select="profesor[2]/id"/>
                            </xsl:attribute>
                            <nombre><xsl:value-of select="profesor[2]/nombre"/></nombre>
                        </profesor>
                        <profesor>
                            <xsl:attribute name="id">
                                <xsl:value-of select="profesor[3]/id"/>
                            </xsl:attribute>
                            <nombre><xsl:value-of select="profesor[3]/nombre"/></nombre>
                        </profesor>
                        <profesor>
                            <xsl:attribute name="id">
                                <xsl:value-of select="profesor[4]/id"/>
                            </xsl:attribute>
                            <nombre><xsl:value-of select="profesor[4]/nombre"/></nombre>
                        </profesor>
                    </xsl:for-each>
                </profesores>
                <equipoDirectivo>
                    <director>
                        <xsl:attribute name="nombre">
                            <xsl:value-of select="ite/director/nombre"/>
                        </xsl:attribute>
                        <despacho><xsl:value-of select="ite/director/despacho"/></despacho>
                    </director>
                    <jefeEstudios>
                        <xsl:attribute name="nombre">
                            <xsl:value-of select="ite/jefe_estudios/nombre"/>
                        </xsl:attribute>
                        <despacho><xsl:value-of select="ite/jefe_estudios/despacho"/></despacho>
                    </jefeEstudios>
                </equipoDirectivo>
            </cuerpoDocente>
            <ofertaEducativa>
                <ciclos>
                    <xsl:for-each select="ite/ciclos">
                        <ciclo>
                            <xsl:attribute name="id">
                                <xsl:value-of select="ciclo[1]/@id"/>
                            </xsl:attribute>
                            <xsl:attribute name="grado">
                                <xsl:value-of select="ciclo[1]/grado"/>
                            </xsl:attribute>
                            <xsl:attribute name="añoDecreto">
                                <xsl:value-of select="ciclo[1]/decretoTitulo/@año"/>
                            </xsl:attribute>
                            <nombre><xsl:value-of select="ciclo[1]/nombre"/></nombre>
                        </ciclo>
                        <ciclo>
                            <xsl:attribute name="id">
                                <xsl:value-of select="ciclo[2]/@id"/>
                            </xsl:attribute>
                            <xsl:attribute name="grado">
                                <xsl:value-of select="ciclo[2]/grado"/>
                            </xsl:attribute>
                            <xsl:attribute name="añoDecreto">
                                <xsl:value-of select="ciclo[2]/decretoTitulo/@año"/>
                            </xsl:attribute>
                            <nombre><xsl:value-of select="ciclo[2]/nombre"/></nombre>
                        </ciclo>
                        <ciclo>
                            <xsl:attribute name="id">
                                <xsl:value-of select="ciclo[3]/@id"/>
                            </xsl:attribute>
                            <xsl:attribute name="grado">
                                <xsl:value-of select="ciclo[3]/grado"/>
                            </xsl:attribute>
                            <xsl:attribute name="añoDecreto">
                                <xsl:value-of select="ciclo[3]/decretoTitulo/@año"/>
                            </xsl:attribute>
                            <nombre><xsl:value-of select="ciclo[3]/nombre"/></nombre>
                        </ciclo>
                    </xsl:for-each>
                </ciclos>
            </ofertaEducativa>
        </ite>
    </xsl:template>
</xsl:stylesheet>