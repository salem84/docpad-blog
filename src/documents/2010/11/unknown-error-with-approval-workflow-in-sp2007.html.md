---
layout: post
title: Unknown error with Approval workflow in SP2007
date: 2010-11-07
tags: ["Sharepoint","sharepoint 2007"]
---

In alcuni casi, quando si cerca di configurare o avviare il Workflow di Approvazione presente in Sharepoint 2007 può essere lanciata un'eccezione generica "_**Errore Sconosciuto**_".

Questo tipo di errore è causato da un'errata gestione dei cookies con Internet Explorer (riscontrato fino alla versione 8 ) che si rifiuta di accettarli da siti con host name contenente il carattere **_underscore ( _ )_**.

Tale problema non può essere risolto intervenendo sulle impostazioni di sicurezza di Internet Explorer, dato che è un comportamento "by design" del browser (v. [http://support.microsoft.com/kb/325192/](http://support.microsoft.com/kb/325192/) ), così l'unica soluzione (oltre all'utilizzo di un browser diverso :-P) è quella di intervenire sull'Alternate Access Mapping di Sharepoint creando un altro URL per l'accesso al sito oppure estendendo l'applicazione e modificando l'hostname.

_UPDATE 07/10/2011_: Lo stesso problema si verifica anche con la Session... semplicemente non funziona, senza lanciare alcuna eccezione/errore.