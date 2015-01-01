---
layout: post
title: SPWeb.Lists vs SPWeb.GetList: performance issues
date: 2010-12-15
tags: ["Sharepoint","sharepoint 2007","sharepoint 2010"]
---

Generalmente per ricavare un oggetto _SPList_, apriamo il sito Web corrent e accediamo alla lista attraverso la SPListCollection _Lists_
``` cs
using (SPSite site = new SPSite(SPContext.Current.Site.ID)){
using (SPWeb web = site.OpenWeb()) {
SPList list = web.Lists["NomeLista"];
}
}
```
Questo approccio però può causare dei problemi di performance quando il numero di liste presenti sul sito è notevole; infatti ogni volta che accediamo alla collection _Lists_, Sharepoint dietro le quinte effettua una serie di query SQL per estrarre i metadati di **TUTTE** le liste presenti nel SPWeb.

Un approccio migliore è quindi quello di accedere direttamente alla lista attraverso il nome e l'url
``` cs
using (SPSite site = new SPSite(SPContext.Current.Site.ID)){
using (SPWeb web = site.OpenWeb()) {
SPList list = web.GetList(web.Url+"Lists/NomeLista");
}
}
```
Per semplificarci l'accesso alla lista possiamo riutilizzare questo snippet:

``` cs
public SPList GetListByName(SPWeb web, string listName)
{
uint langId = SPContext.Current.Web != null ? SPContext.Current.Web.Language : 1033;
string urlNameLists = SPUtility.GetLocalizedString("$Resources:core,lists_Folder;", null, langId);
string url = string.Format("{0}/{1}/{2}", web.Url, urlNameLists, listName);
return web.GetList(url);
}
```