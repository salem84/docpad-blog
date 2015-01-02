---
layout: post
title: Modify style for Webpart Header
date: 2013-02-02
tags: ["CSS","Sharepoint","sharepoint 2010","sharepoint designer"]
---

Alcune volte può capitare di dover modificare lo stile del titolo di una Sharepoint Webpart... dalla tipologia di carattere o semplicemente il colore.

Purtroppo non esiste una proprietà per modificarlo direttamente dall'interfaccia di Sharepoint, ma dobbiamo intervenire sugli stili CSS o per modifiche più complesse con appositi script jQuery.

Ad esempio con il seguente codice
``` css
<style type="text/css">
     tr.ms-WPHeader td[title^=TITOLO]
     {

     }
</style>
```
è possibile modificare lo stile dell'header per le webpart il cui titolo <span style="text-decoration: underline;">_inizia_</span> con la parola TITOLO