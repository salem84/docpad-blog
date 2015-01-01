---
layout: post
title: How to re-ghost files with Powershell
date: 2011-04-04
tags: ["powershell","Sharepoint","sharepoint 2010"]
---

Alcune volte può capitare di effettuare modifiche con Sharepoint Designer 2010 a pagine deployate attraverso una feature (pensiamo ad esempio ai page layout). In questo caso Sharepoint effettua l'operazione di "ghost", che consiste nel memorizzare la pagina all'interno del Content DB, lasciando inalterata la pagina su file system (all'interno della cartella delle feature).

E' possibile annullare quest'operazione in due modi:

*   attraverso Sharepoint Designer 2010, cliccando col tasto destro sulla pagina (che sarà segnalata con una I in blu) e scegliendo dal menu contestuale "_Restore to site definition_"
*   Utilizzando uno script in Powershell che apre il file e lo ripristina allo stato unghost. Ad esempio per ripristinare un page layout possiamo eseguire questo script
``` ps
$web = Get-SPWeb
$folder = $web.GetFolder("/_catalogs/masterpage")
$file = $folder.Files["$NOME_FILE$"]
$file.RevertContentStream()
```
Inoltre è possibile visualizzare la proprietà "CustomizedPageStatus" dell'oggetto $file

``` ps
$file.CustomizedPageStatus;
```

per conoscere lo stato della pagina (_Customized_ o _Uncustomized_)