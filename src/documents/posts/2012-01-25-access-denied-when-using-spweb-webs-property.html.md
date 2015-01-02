---
layout: post
title: Access Denied when using SPWeb.Webs property
date: 2012-01-25
tags: ["Programmazione","sandbox","Sharepoint","sharepoint online"]
---

Se si prova ad utilizzare la proprietà _Webs_ della classe SPWeb con un'utenza che non abbia almeno i diritti di collaboratore  riceveremo un bel **Access Denied**.

Normalmente quando ci troviamo in una situazione simile la soluzione più semplice è racchiudere il blocco di codice all'interno del famoso blocco _SPSecurity.RunWithElevatedPrivileges_... ma se stiamo sviluppando una Sandbox Solution e non possiamo effettuare escalation dei privilegi?

La soluzione è usare il metodo [GetSubwebsForCurrentUser()](http://msdn.microsoft.com/en-us/library/microsoft.sharepoint.spweb.getsubwebsforcurrentuser.aspx "GetSubwebsForCurrentUser") di SPWeb; esistono anche diversi overloading del metodo per filtrare ulteriormente il risultato.