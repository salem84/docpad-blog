---
layout: post
title: How check Publishing Page Status
date: 2011-10-07
tags: ["C#","Programmazione","Sharepoint","sharepoint 2007","sharepoint 2010"]
---

Andare a controllare la proprietà
``` cs
SPContext.Current.FormContext.FormMode
```
che valore dell'enumerazione [SPControlMode](http://msdn.microsoft.com/en-us/library/microsoft.sharepoint.webcontrols.spcontrolmode.aspx) assume:

*   **Display:** in modalità visualizzazione
*   **Edit:** in modalità modifica
*   **New:** in modalità nuovo
*   **Invalid:** Houston abbiamo un problema :-P