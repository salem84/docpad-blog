---
layout: post
title: ContentQuery WebPart with alternate color in Sharepoint 2007
date: 2009-12-13
tags: [".NET","branding","Programmazione","Sharepoint","sharepoint 2007"]
---

In questi giorni mi è stato chiesto di customizzare il template di un'intranet sviluppata con Sharepoint 2007: in particolare mi è stato chiesto di modificare la ContentQuery WebPart in modo da visualizzarla con righe di colori alternati.

[![](/images/2009/contentquerywp1.png "ContentQueryWP")](/images/2009/contentquerywp1.png)

Per fare ciò è necessario intervenire sui file XSLT presenti all'interno di _/Style Library/XSL Style Sheets_ (facilmente accessibile tramite Sharepoint Designer) che definiscono come deve essere visualizzato l'XML raw estratto dal database o risultato di una query (per ulteriori informazioni leggere l'MSDN [qui](http://msdn.microsoft.com/en-us/library/ms551040(office.12).aspx)).

Ho modificato il file ItemStyle.xsl aggiungendo un nuovo stile (template RigheAlternate):

``` xml
<xsl:template name="AlternateList" match="Row[@Style='AlternateList']" mode="itemstyle">
	<xsl:param name="CurPos" />
	<xsl:variable name="SafeLinkUrl">
	<xsl:call-template name="OuterTemplate.GetSafeLink">
	<xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
	</xsl:call-template>
	</xsl:variable>
	<xsl:variable name="DisplayTitle">
	<xsl:call-template name="OuterTemplate.GetTitle">
	<xsl:with-param name="Title" select="@Title"/>
	<xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
	</xsl:call-template>
	</xsl:variable>
	<xsl:variable name="LinkTarget">
	<xsl:if test="@OpenInNewWindow = 'True'" >_blank</xsl:if>
	</xsl:variable>
	<div id="linkitem" class="item">
	<xsl:choose>
	<xsl:when test="$CurPos mod 2 != 0">
	<div class="link-item-alt1">
	<xsl:call-template name="OuterTemplate.CallPresenceStatusIconTemplate"/>
	<xsl:value-of select="substring(@Created,1,11)"/>
	<a href="{$SafeLinkUrl}" target="{$LinkTarget}" title="{@LinkToolTip}">
	<xsl:value-of select="$DisplayTitle"/>
	</a>
	<div class="description">
	<xsl:value-of select="@Description" />
	</div>
	</div>
	</xsl:when>
	<xsl:otherwise>
	<div class="link-item-alt2">
	<xsl:call-template name="OuterTemplate.CallPresenceStatusIconTemplate"/>
	<xsl:value-of select="substring(@Created,1,11)"/>
	<a href="{$SafeLinkUrl}" target="{$LinkTarget}" title="{@LinkToolTip}">
	<xsl:value-of select="$DisplayTitle"/>
	</a>
	<div class="description">
	<xsl:value-of select="@Description" />
	</div>
	</div>
	</xsl:otherwise>
	</xsl:choose>
	</div>
</xsl:template>
```
&nbsp;

Fatto ciò è necessario impostare lo stile della WebPart dall'interfaccia grafica di Sharepoint stesso (Webpart in modalità Modifica, cliccare nella toolbar Configura stili e layout)

![](/images/2009/webparttoolbar.png "WebPartToolbar")

[![](/images/2009/configurastililayout.png "ConfiguraStiliLayout")](/images/2009/configurastililayout.png)

Infine è necessario modificare il file CSS associato al sito (in genere il tema) in modo da definire sia la classe _link-item-alt1_ che _link-item-alt2_

``` css
.link-item-alt1
{
	background-color: #f3f3f4;

	border-bottom: #fff 3px solid;
	padding-bottom: 10px;
	padding-left: 10px;
	padding-right: 10px;
	padding-top: 10px;
	width:auto;
}

.link-item-alt2
{
	background-color: #e0e1e3;

	border-bottom: #fff 3px solid;
	padding-bottom: 10px;
	padding-left: 10px;
	padding-right: 10px;
	padding-top: 10px;
	width:auto;
}
```