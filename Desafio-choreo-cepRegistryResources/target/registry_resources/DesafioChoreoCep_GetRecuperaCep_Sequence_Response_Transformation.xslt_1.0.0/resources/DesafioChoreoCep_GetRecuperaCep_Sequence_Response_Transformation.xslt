<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	exclude-result-prefixes="xs" version="2.0">
	<xsl:template match="/">
		<jsonObject>
			<xsl:if test="//cep/text()">
				<cep>
					<xsl:value-of select="//cep/text()" />
				</cep>
			</xsl:if>
			<xsl:if test="//logradouro/text()">
				<rua>
					<xsl:value-of select="//logradouro/text()" />
				</rua>
			</xsl:if>
			<xsl:if test="//complemento/text()">
				<complemento>
					<xsl:value-of select="//complemento/text()" />
				</complemento>
			</xsl:if>
			<xsl:if test="//bairro/text()">
				<bairro>
					<xsl:value-of select="//bairro/text()" />
				</bairro>
			</xsl:if>
			<xsl:if test="//localidade/text()">
				<cidade>
					<xsl:value-of select="//localidade/text()" />
				</cidade>
			</xsl:if>
			<xsl:if test="//uf/text()">
				<estado>
					<xsl:value-of select="//uf/text()" />
				</estado>
			</xsl:if>
			<xsl:if test="//retorno/item/message/text()">
				<retorno>
					<xsl:if test="//retorno/item/type/text()">
						<tipo>
							<xsl:value-of
								select="(//retorno/item/type/text())[1]" />
						</tipo>
					</xsl:if>
					<xsl:if test="//retorno/item/id/text()">
						<id>
							<xsl:value-of select="(//retorno/item/id/text())[1]" />
						</id>
					</xsl:if>
					<xsl:if test="//retorno/item/number/text()">
						<numero>
							<xsl:value-of
								select="(//retorno/item/number/text())[1]" />
						</numero>
					</xsl:if>
					<mensagem>
						<xsl:value-of
							select="(//retorno/item/message/text())[1]" />
					</mensagem>
				</retorno>
			</xsl:if>
		</jsonObject>
	</xsl:template>
</xsl:stylesheet>