---
layout: post
title: Add files in a document library
date: 2012-03-22
tags: ["Programmazione","Sharepoint","sharepoint 2007","sharepoint 2010"]
---

Creazione di un file all'interno di una document library:
``` cs
SPList list = this.web.Lists[this.DocLibDestinazione];

string urlFolder = SPUtility.ConcatUrls(this.web.Url, list.RootFolder.Url);

SPFile destfile = this.web.GetFolder(urlFolder).Files.Add(filename, streamOutput, true);
```