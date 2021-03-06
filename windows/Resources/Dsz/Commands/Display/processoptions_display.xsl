<?xml version='1.1' ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:import href="include/StandardTransforms.xsl"/>
  
	<xsl:template match="Success">
		<xsl:text>Query/Set successful</xsl:text>
		<xsl:call-template name="PrintReturn"/>
	</xsl:template>

	<xsl:template match="ExecuteOptions">
		<xsl:text>Execute options are </xsl:text>
		<xsl:value-of select="@value"/>
		<xsl:call-template name="PrintReturn"/>
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="ExecutionDisabled">
		<xsl:text>    EXECUTION_DISABLED</xsl:text>
		<xsl:call-template name="PrintReturn"/>
	</xsl:template>

	<xsl:template match="ExecutionEnabled">
		<xsl:text>    EXECUTION_ENABLED</xsl:text>
		<xsl:call-template name="PrintReturn"/>
	</xsl:template>

	<xsl:template match="DisableThunkEmulation">
		<xsl:text>    DISABLE_THUNK_EMULATION</xsl:text>
		<xsl:call-template name="PrintReturn"/>
	</xsl:template>

	<xsl:template match="Permanent">
		<xsl:text>    PERMANENT</xsl:text>
		<xsl:call-template name="PrintReturn"/>
	</xsl:template>

	<xsl:template match="ExecuteDispatchEnabled">
		<xsl:text>    EXECUTE_DISPATCH_ENABLED</xsl:text>
		<xsl:call-template name="PrintReturn"/>
	</xsl:template>

	<xsl:template match="ImageDispatchEnabled">
		<xsl:text>    IMAGE_DISPATCH_ENABLED</xsl:text>
		<xsl:call-template name="PrintReturn"/>
	</xsl:template>

	<xsl:template match="DisableExceptionChainValidation">
		<xsl:text>    DISABLE_EXCEPTION_CHAIN_VALIDATION</xsl:text>
		<xsl:call-template name="PrintReturn"/>
	</xsl:template>

</xsl:transform>