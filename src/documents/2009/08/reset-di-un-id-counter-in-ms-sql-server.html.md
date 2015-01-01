---
layout: post
title: Reset di un ID counter in MS SQL Server
date: 2009-08-16
tags: ["database","MS SQL Server","Programmazione"]
---

In alcune circostanze, soprattutto nella fase di test di un DB, capita di dover cancellare tutti i dati contenuti in una tabella.

Generalmente il metodo più veloce è lanciare il seguente SQL statement:
``` sql
TRUNCATE TABLE <nome_tabella>
```
Questo comando cancellerà tutte le row all'interno della table e resetterà automaticamente il contatore degli identificatori autoincrementati. Se però la tabella contiene Foreign Key, Microsoft SQL Server ci restituirà un errore.
Una soluzione alternativa è quella di utilizzare:
``` sql
DELETE FROM <nome_tabella>
```
e resettare successivamente il counter con
``` sql
DBCC CHECKIDENT ('<nome_tabella>', RESEED, <id_precedente>);
```
con uguale al valore precedente l'indice che si vuole settare (tipicamente 0).

Un altro comando utile sempre in riferimento ai counter è
``` sql
DBCC CHECKIDENT ('<nome_tabella>', NORESEED);
```
che ci restituisce il valore corrente dell'ID, utilizzato dall'ultima row