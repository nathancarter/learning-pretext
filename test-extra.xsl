<!-- Declare this file to be a stylesheet and start the doc.    -->
<!DOCTYPE xsl:stylesheet [
    <!ENTITY % entities SYSTEM "entities.ent">
    %entities;
]>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- We must import the entirety of pretext's HTML processing,  -->
<!-- because if not, we will be REPLACING it with our work (!). -->
<xsl:import href="pretext/xsl/pretext-html.xsl"/>

<!-- Do not apply the default "create-iframe-page" behavior.    -->
<xsl:template match="interactive[@my-cool-app]" mode="create-iframe-page"/>
<!-- Instead, apply the behavior I define here:                 -->
<xsl:template match="interactive[@my-cool-app]" mode="iframe-interactive">
    <div style="border: 1px solid green; padding: 1em;">
        <p>MY COOL APP WOULD GO HERE</p>
        <p>Param value = <xsl:value-of select="@my-cool-app"/></p>
        <p>Text content = "<xsl:value-of select="text()"/>"</p>
    </div>
</xsl:template>

</xsl:stylesheet>
