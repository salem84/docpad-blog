---
layout: post
title: Useful properties to customize webpart definition
date: 2012-05-12
tags: ["Sharepoint","sharepoint 2010","webparts"]
---

Ecco un elenco delle proprietà più comuni utilizzate nel file .webpart:

*   Title _[type=string]_
*   Description _[type=string]_
*   ChromeType _[type=chrometype]_: None
&nbsp;

Ecco un esempio della sezione interessata
``` xml
<?xml version="1.0" encoding="utf-8"?>
<webParts>
<webPart xmlns="http://schemas.microsoft.com/WebPart/v3">
...
<data>
<properties>
<property name="Title" type="string">Titolo</property>
<property name="Description" type="string">Descrizione</property>
<property name="ChromeType" type="chrometype">None</property>
</properties>
</data>
</webPart>
</webParts>
```