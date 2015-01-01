---
layout: post
title: BeforeProperties and AfterProperties in Event Receivers
date: 2012-05-10
tags: ["Programmazione","Sharepoint","sharepoint 2010"]
---

Sharepoint prevede due tipologie di Event Receivers che operano su Elenchi e Document Library :

*   quelli **sincroni**, che scattono nel momento in cui viene effettuata un'operazione sull'item
*   quelli **asincroni**, che vengono eseguiti in un thread separato dopo che l'operazione è andata a buon fine
Per poter accedere ai metadati dell'item in esame possiamo utilizzare 3 proprietà dell'oggetto _SPItemEventProperties_:

*   _BeforeProperties_
*   _AfterProperties_
*   _ListItem_
Il problema che queste proprietà molto spesso non sono significative (null o senza valore) oppure contengono valori uguali tra loro e sono strettamente dipendenti dalla tipologia di evento e dalla tipologia di lista (se è una Document Library o un Elenco).

Ecco una tabella che riassume i valori delle diverse proprietà:
<table width="491" border="1" cellspacing="0" cellpadding="2">
<tbody>
<tr>
<td style="text-align:center;" colspan="4">**<span style="color:#ff0000;">Lista</span>**</td>
</tr>
<tr>
<td valign="top" width="111"><span style="font-size:small;">**
**</span></td>
<td align="middle" valign="top" width="152">**BeforeProperties**</td>
<td align="middle" valign="top" width="119">**AfterProperties**</td>
<td align="middle" valign="top" width="107">**ListItem**</td>
</tr>
<tr>
<td valign="top" width="111">_ItemAdding_</td>
<td align="middle" valign="top" width="152"></td>
<td align="middle" valign="top" width="119">Modificato</td>
<td align="middle" valign="top" width="107"></td>
</tr>
<tr>
<td valign="top" width="111">_ItemAdded_</td>
<td align="middle" valign="top" width="152"></td>
<td align="middle" valign="top" width="119">Modificato</td>
<td align="middle" valign="top" width="107">Modificato</td>
</tr>
<tr bgcolor="lavender">
<td valign="top" width="111">_ItemUpdating_</td>
<td align="middle" valign="top" width="152"></td>
<td align="middle" valign="top" width="119">Modificato</td>
<td align="middle" valign="top" width="107">Originale</td>
</tr>
<tr bgcolor="lavender">
<td valign="top" width="111">_ItemUpdated_</td>
<td align="middle" valign="top" width="152"></td>
<td align="middle" valign="top" width="119">Modificato</td>
<td align="middle" valign="top" width="107">Modificato</td>
</tr>
<tr>
<td valign="top" width="111">_ItemDeleting_</td>
<td align="middle" valign="top" width="152"></td>
<td align="middle" valign="top" width="119"></td>
<td align="middle" valign="top" width="107">Originale</td>
</tr>
<tr>
<td valign="top" width="111">_ItemDeleted_</td>
<td align="middle" valign="top" width="152"></td>
<td align="middle" valign="top" width="119"></td>
<td align="middle" valign="top" width="107"></td>
</tr>
</tbody>
</table>
Mentre per le Document Library abbiamo
<table width="495" border="1" cellspacing="0" cellpadding="2">
<tbody>
<tr>
<td style="text-align:center;" colspan="4"><span style="color:#ff0000;">**Document Library**</span></td>
</tr>
<tr>
<td valign="top" width="104"></td>
<td align="middle" valign="top" width="132">**BeforeProperties**</td>
<td align="middle" valign="top" width="128">**AfterProperties**</td>
<td align="middle" valign="top" width="129">**ListItem**</td>
</tr>
<tr>
<td valign="top" width="104">_ItemAdding_</td>
<td align="middle" valign="top" width="132"></td>
<td align="middle" valign="top" width="128"></td>
<td align="middle" valign="top" width="129"></td>
</tr>
<tr>
<td valign="top" width="104">_ItemAdded_</td>
<td align="middle" valign="top" width="132"></td>
<td align="middle" valign="top" width="128"></td>
<td align="middle" valign="top" width="129">Modificato</td>
</tr>
<tr bgcolor="lavender">
<td valign="top" width="104">_ItemUpdating_</td>
<td align="middle" valign="top" width="132">Originale</td>
<td align="middle" valign="top" width="128">Modificato</td>
<td align="middle" valign="top" width="129">Originale</td>
</tr>
<tr bgcolor="lavender">
<td valign="top" width="104">_ItemUpdated_</td>
<td align="middle" valign="top" width="132">Originale</td>
<td align="middle" valign="top" width="128">Modificato</td>
<td align="middle" valign="top" width="129">Modificato</td>
</tr>
<tr>
<td valign="top" width="104">_ItemDeleting_</td>
<td align="middle" valign="top" width="132"></td>
<td align="middle" valign="top" width="128"></td>
<td align="middle" valign="top" width="129">Originale</td>
</tr>
<tr>
<td valign="top" width="104">_ItemDeleted_</td>
<td align="middle" valign="top" width="132"></td>
<td align="middle" valign="top" width="128"></td>
<td align="middle" valign="top" width="129"></td>
</tr>
</tbody>
</table>