---
layout: post
title: Errore con SPGridView e paginazione
date: 2009-12-09
tags: [".NET","Programmazione","Sharepoint","sharepoint 2007"]
---

Quando si usa il componente SPGridView di Sharepoint all'interno di una WebPart, possono verificarsi strani errori quando si accede alla pagina per la modifica delle webpart o quando si cambia pagina della griglia (nel caso in cui sia attiva la paginazione).

Per risolvere il problema è necessario disabilitare il ViewState della SPGridView, inserendo :
``` cs
grid.EnableViewState = false;
```