---
layout: post
title: Una chiocciola @ C#
date: 2009-08-06
tags: [".NET","C#","Programmazione"]
---

Oggi pomeriggio stavo "sfogliando" il manuale [MCTS Self-Paced Training Kit (Exam 70-536) - Microsoft .NET Framework Application Development Foundation](http://www.amazon.com/MCTS-Self-Paced-Training-Exam-70-536/dp/0735626197/ref=sr_1_1?ie=UTF8&s=books&qid=1239126309&sr=1-1) con l'intento di studiare in maniera rigorosa C# e il framework .NET quando mi sono imbattuto nella seguente linea di codice:

``` cs
FileInfo ourFile = new FileInfo(@"c:boot.ini");
```

Premetto che non sono un esperto di C# (anzi le mie maggiori esperienze le ho fatte nel mondo concorrente Java :-P) però finora non mi era mai capitato di vedere impiegata la chiocciola. Così ho fatto subito una ricerca e ho trovato il blog di [Andrea Boschin](http://blog.boschin.it/archive/2005/01/06/978.aspx) (molto interessante) che sviscerava ben bene le feature legate alla chiocciola.
<!-- more -->
Innanzitutto viene utilizzata anteposta ad una stringa con lo scopo di modificare la politica di escape classica e utilizzare i backslash come caratteri normali; ad esempio in questo modo eviteremo di scrivere i doppi backslash nella definizione dei path

``` cs
FileInfo ourFile = new FileInfo("c:\boot.ini");
```

In secondo luogo Andrea cita un altro utilizzo, ancora più particolare: se anteponiamo la chioccola ad un _identifier_ (che può essere il nome di un metodo, di una property o una variabile), il compilatore considererà la parola come un nome valido anche se è già un nome riservato per una _keyword_.
Mi spiego meglio con un esempio... provando a compilare:

``` cs
string class = "mela";
```

otterremo un errore visto che class è una keyword di C#; utilizzando invece

``` cs
string @class = "mela";
```

il compilatore non genererà alcun errore. Naturalmente anche se valido, l'abitudine di assegnare nomi riservati alle variabili è fortemente sconsigliato in C# come in tutti gli altri linguaggi