---
layout: post
title: System.Net.WebPermission failed
date: 2009-11-21
tags: ["ASP.NET","Programmazione"]
---

Ieri mi è capitato di controllare una pagina ASP.NET sviluppata da un'altra persona che semplicemente non funzionava. Usando il debugger ho scoperto che veniva generata un'eccezione del tipo:
**'System.Net.WebPermission, System, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089' failed**
in molte parti del codice tra cui una _WebRequest_.

Dato che toccava in un modo o nell'altro farlo funzionare e non c'era tempo di capire bene il motivo del problema ne trovare una soluzione pulita, mi sono "accontentato" di aggiungere semplicemente nel _web.config_ :
``` xml
<system.web>
<trust level="Full" originUrl="" />
</system.web>
```
Dato che non so di preciso quali siano le conseguenze di tale scelta per la sicurezza dell'applicativo, cercherò nei prossimi giorni una soluzione alternativa.