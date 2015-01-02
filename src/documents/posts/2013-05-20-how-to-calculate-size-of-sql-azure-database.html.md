---
layout: post
title: How to calculate size of SQL Azure database
date: 2013-05-20
tags: ["Azure","Azure","MS SQL Server"]
---

SQL Azure effettua lo scaling automatico del database, aumentando le dimensioni massime gestite dall'istanza al crescere delle dimensioni del database, solamente però nel caso in cui stiamo utilizzando un'istanza di tipo BUSINESS.

Nel caso in cui invece partiamo dall'istanza WEB (quelle più piccole) può essere utile avere a disposizione uno script SQL per visualizzare alcuni dati sullo spazio occupato ed effettuare manualmente il passaggio da istanza WEB a quella BUSINESS.

In particolare, per visualizzare la dimensione complessiva del database in Megabytes
``` sql
select sum(reserved_page_count) * 8.0 / 1024 
from sys.dm_db_partition_stats
```
Mentre con questo script è possibile visualizzare lo spazio occupato dalla singola tabella:
``` sql
select sys.objects.name, sum(reserved_page_count) * 8.0 / 1024 
from sys.dm_db_partition_stats, sys.objects 
where sys.dm_db_partition_stats.object_id = sys.objects.object_id
group by sys.objects.name
```
Da [msdn](http://msdn.microsoft.com/it-it/library/windowsazure/ff394114.aspx)