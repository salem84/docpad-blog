---
layout: post
title: Salvare le schede aperte al prossimo riavvio?
date: 2009-08-08
tags: ["Curiosità","firefox","internet"]
---

Quante volte è capitato di leggere questo messaggio nella dialog alla chiusura del browser del panda rosso (anche se a me piace più l'idea di volpe :-P)
Alcune volte, quando andiamo di corsa, ci dà addirittura fastidio, ma il più delle volte si rivela un'utile scorciatoia (almeno per me) per evitare di farci andare a ricercare nella cronologia tutte le schede faticosamente aperte!

Il problema però è quella piccola checkbox sotto al messaggio che ci permette di disabilitare la richiesta: qualche giorno fa devo averla cliccata senza neanche accorgermene e da allora il mio buon vecchio browser ha smesso giustamente di domandarmi cosa fare.

A parte i primi momenti in cui non sapevo se magari fosse una modifica dovuta a qualche aggiornamento di Firefox o a qualche suo add-on, sono andato alla ricerca di un modo per riabilitarla tra i tab delle _Opzioni_. Niente da fare, ci sono altre opzioni per far aprire al browser ogni volta le schede chiuse, ma non l'opzione per riabilitare il warning.

La soluzione sta nelle preferences nascoste, accessibili tramite l'url _**about:config**_; in particolare bisogna settare a **true **i seguenti valori:

*   <span style="font-weight:bold;">browser.warnOnClose</span>
*   <span style="font-weight:bold;">browser.tabs.warnOnClose</span>
*   <span style="font-weight:bold;">browser.tabs.warnOnQuit
</span>

<div style="text-align:center">![Panda Rosso](/images/2009/red_panda_close_up11.jpg "Panda Rosso")</div>