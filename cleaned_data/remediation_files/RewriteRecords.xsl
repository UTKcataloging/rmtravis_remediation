<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.og/2001/XMLSchema"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns="http://www.loc.gov/mods/v3"
    xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-5.xsd"
    exclude-result-prefixes="xs"
    xpath-default-namespace="http://www.loc.gov/mods/v3"
    version="2.0">
    
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="text()">
        <xsl:value-of select="normalize-space(.)"/>
    </xsl:template>
    
    <xsl:template match="name"/>

    <xsl:template match="subject"/>

    <xsl:template match="location"/>
    
    <xsl:template match="relatedItem[@displayLabel='Project']"/>

    <xsl:template match="relatedItem[@displayLabel='Collection']"/>
    
    <xsl:template match="recordInfo"/>

    <xsl:template match="accessCondition"/>
    
    <xsl:template match="typeOfResource"/>
    
    <xsl:template match="language"/>
    
    <xsl:template match='mods'>
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
            <name authority="naf" valueURI="http://id.loc.gov/authorities/names/no2020072426">
                <namePart>Travis, Robert Morris, 1857-1941</namePart>
                <role>
                    <roleTerm authority="marcrelator" valueURI="http://id.loc.gov/vocabulary/relators/crp">Correspondent</roleTerm>
                </role>
            </name>
            <name>
                <namePart>Kennerly, Wesley Travis</namePart>
                <role>
                    <roleTerm authority="marcrelator" valueURI="http://id.loc.gov/vocabulary/relators/rcp">Addressee</roleTerm>
                </role>
            </name>
            <physicalDescription>
                <form authority="aat" valueURI="http://vocab.getty.edu/aat/300026877">correspondence</form>
            </physicalDescription>
            <subject authority="lcsh" valueURI="http://id.loc.gov/authorities/subjects/sh85140286">
                <topic>Spanish-American War, 1898</topic>
            </subject>
            <subject authority="lcsh" valueURI="http://id.loc.gov/authorities/subjects/sh91001065">
                <topic>Spanish-American War, 1898--Campaigns--Philippines</topic>
            </subject>
            <subject authority="naf" valueURI="http://id.loc.gov/authorities/names/n2006028605">
                <name>
                    <namePart>United States. Army. Infantry Regiment, 4th</namePart>
                </name>
            </subject>
            <subject authority="naf" valueURI="http://id.loc.gov/authorities/names/n79056525">
                <geographic>Manila (Philippines)</geographic>
            </subject>
            <typeOfResource>text</typeOfResource>
            <language>
                <languageTerm authority="iso639-2b" type="text">English</languageTerm>
            </language>
            <relatedItem displayLabel="Project" type="host">
                <titleInfo>
                    <title>Robert Morris Travis Letters</title>
                </titleInfo>
            </relatedItem>
            <relatedItem displayLabel="Collection" type="host">
                <titleInfo>
                    <title>Robert Morris Travis Papers</title>
                </titleInfo>
                <identifier>MS.3281</identifier>
            </relatedItem>
            <location>
                <physicalLocation valueURI="http://id.loc.gov/authorities/names/no2014027633">University of Tennessee, Knoxville. Special Collections</physicalLocation>
            </location>
            <recordInfo>
                <recordContentSource valueURI="http://id.loc.gov/authorities/names/n87808088">University of Tennessee, Knoxville. Libraries</recordContentSource>
                <languageOfCataloging>
                    <languageTerm type="code" authority="iso639-2b">eng</languageTerm>
                </languageOfCataloging>
                <recordCreationDate>2020-04-23-04:00</recordCreationDate>
                <recordOrigin>This MODS record was generated into MODS v3.5 from the TEI teiHeader by
                    University of Tennessee Libraries Digital Initiatives, using a stylesheet available at
                    https://github.com/utkdigitalinitiatives/tei-to-mods.</recordOrigin>
            </recordInfo>
            <accessCondition type="use and reproduction" xlink:href="http://rightsstatements.org/vocab/NoC-US/1.0/">No Copyright - United States</accessCondition>
        </xsl:copy>
    </xsl:template>
    
    <xsl:strip-space elements="*"/>
</xsl:stylesheet>