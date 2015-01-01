---
layout: post
title: Error in Sharepoint Designer 2010 – Master pages editing disabled
date: 2010-07-14
tags: ["branding","Sharepoint","sharepoint 2010","sharepoint designer"]
---

Ho iniziato a fare le prime prove di customizzazione di un sito realizzato con Sharepoint 2010.

Dopo aver giocherellato con il nuovo ribbon e aver analizzato a grandi linee il codice HTML prodotto da Sharepoint (di gran lunga più accessibile realizzato esclusivamente con _&lt;div&gt;_ piuttosto che _&lt;table&gt;_), sono voluto andare al sodo con la modifica della nuova master page.
Così faccio modifica Master page all'interno della home di SPD2010 e... ecco comparire il primo messaggio di errore che non mi permette di andare avanti.

[![La modifica di pagine master è stata disabilitata per questo sito. Contattare l](/images/posts/2010/errormasterpage1.png "ErrorMasterPage")](errormasterpage1.png)

> _"La modifica di pagine master è stata disabilitata per questo sito. Contattare l'amministratore della raccolta siti per richiedere l'autorizzazione"_

Dopo aver girato un po' per blog cercando l'equivalente inglese del messaggio di errore ("_Master page editing has been disabled for this site.  Contact the site collection administrator to request permission._") scopro che di <span style="text-decoration:underline;">default</span> gli utenti con privilegi di _Site Admin_ o Designers non possono modificare la master page.

Bisogna quindi abilitare all'interno delle impostazioni della Raccolta Siti (_Site Collection Administration_) e precisamente nel menù legato alle impostazioni di SPD2010, l'opzione per l'editing delle master page.