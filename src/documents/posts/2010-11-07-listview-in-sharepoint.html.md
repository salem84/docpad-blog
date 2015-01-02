---
layout: post
title: Listview in Sharepoint
date: 2010-11-07
tags: ["ASP.NET","Sharepoint","sharepoint 2010"]
---

Per utilizzare il controllo ListView di ASP.NET 3.5 in una Visual WebPart o una pagina di Sharepoint 2010 ci sono due possibilità:

*   Aggiungere nel web.config (sezione _<controls>_ in _<system.web>_ e <_pages>_)
``` xml
<add tagPrefix="asp" namespace="System.Web.UI.WebControls" assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" />
```

*   Registrare il namespace all'interno dell'_aspx_ o _ascx_
``` xml
<%@ Register Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.WebControls" TagPrefix="asp" %>
```