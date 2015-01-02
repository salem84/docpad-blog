---
layout: post
title: Hide ribbon in Sharepoint 2010
date: 2013-03-20
tags: ["CSS","Sharepoint","sharepoint 2010"]
---

Un metodo semplice e veloce per nascondere il ribbon in Sharepoint 2010 è quello di intervenire direttamente sugli stili CSS: in particolare è possibile utilizzare Sharepoint Designer per aggiungere il seguente script alla master page:
``` css
<style type="text/css">
    #s4-ribbonrow { display : none; } 
</style>
```
E' possibile anche utilizzare questo script<!-- more -->combinandolo con il controllo _SPSecurityTrimmedControl_ presente in Sharepoint.
<span style="line-height: 1.7em;">Tale controllo consente di visualizzare il proprio contenuto soltanto se l'utente loggato gode dei permessi definiti attraverso la proprietà </span>_PermissionString_
```
<Sharepoint:SPSecurityTrimmedControl ID="spSecurity" runat="server" PermissionsString="BrowseDirectories">

<style type="text/css"> 
    #s4-ribbonrow { display : block; } 
</style> 
</Sharepoint:SPSecurityTrimmedControl>
```
In questo caso viene nascosto il ribbon a tutti gli utenti Anonimi.

Se invece vogliamo evitare di modificare manualmente la masterpage, possiamo servirci di questa feature su codeplex [SPRibbonVisibility](http://spribbonvisibility.codeplex.com/ "SPRibbonVisibility") che aggiunge, tra le impostazioni del Sito, un menu per modificare agevolmente la visibilità del Ribbon.

Ricordiamoci che intervenendo sul CSS non eviteremo il caricamento del ribbon (con tutti i JS e HTML correlati) ma lo nasconderemo solamente all'utente che visita la pagina! Il Ribbon sarà sempre presente ed eventualmente reso di nuovo visibile attraverso un JS o intervenendo nuovamente sul CSS.