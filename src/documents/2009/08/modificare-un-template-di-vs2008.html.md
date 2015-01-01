---
layout: post
title: Modificare un template di VS2008
date: 2009-08-14
tags: [".NET","Programmazione","visual studio .NET"]
---

Alcune volte può essere comodo modificare i file predefiniti (_template_) utilizzati da Visual Studio, sia quelli creati automaticamente insieme ad un nuovo progetto che quelli aggiunti ad un progetto già esistente

L'operazione non è difficile, bisogna solo trovare il file desiderato nei meandri dei file dell'IDE; per fare ciò dobbiamo modificare alcuni file presenti all'interno del path di Visual Studio
> _$VS_INSTALLPATH$Common7IDE_
che contiene le seguenti directory:

*   **ItemTemplates**: con i template utilizzati quando aggiungiamo un _Nuovo Elemento_ in un progetto esistente
*   **ProjectTemplates**: con i template dei progetti predefiniti
In particolare li troveremo classificati all'interno di queste directory rispettivamente per linguaggio di programmazione (_CSharp, VisualBasic, VisualC, Web,..._) per funzionalità (_General, Data, Office,..._) e per lingua (_1040_ per l'_italiano _e _1033 _per l'_inglese_) sotto forma di file ZIP.
Inoltre associate a queste directory troveremo delle directory analoghe (col suffisso **-Cache**) che contengono i template decompressi.

<!-- more -->A questo punto possiamo seguire _due _strade:

1.  Andremo a modificare direttamente i file nelle directory _cache_
2.  Più lunga, in cui modificheremo il contenuto dei file ZIP e ricreeremo la cache di VS. In questo caso dopo aver modificato il template nel file compresso, dovremmo cancellare la directory Cache associata e dal prompt di Visual Studio, lanciare il comando:
``` dos
devenv /InstallVSTemplates
```
per rigenerarla
Sicuramente vanno notate due cose:

*   La prima di natura pratica... molto probabilmente su Windows Vista sarà necessario avviare il prompt e l'editor per modificare i file con i privilegi di Amministratore in modo da superare l'UAC
*   La seconda è una delucidazione sulla tipologia di file nel caso si andasse a modificare i template di ASP.NET: in questo caso troveremo file con nomi simili... ad esempio se andiamo a modificare il template della WebForm, all'interno dell'archivio/directoryCache WebForm avremo i file _webform.aspx_ e _webform_cb.aspx_ a seconda se si utilizzi o meno il code-behind