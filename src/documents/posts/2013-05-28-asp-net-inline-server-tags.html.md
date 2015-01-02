---
layout: post
title: ASP.NET Inline Server Tags
date: 2013-05-28
tags: ["ASP.NET","Programmazione"]
---

Ecco un riepilogo dei vari tag ASP.NET che possono usati direttamente nelle pagine ASPX per inserire direttamente delle istruzioni senza passare per il code-behind.
<!-- more -->

<address class="note">**                                                                                      <% ... %>**</address>E' quello più usato e serve semplicemente ad inserire codice che verrà eseguito lato server; un esempio può essere il seguente
```
<% if(condizione){ %>
vera
<% } else { %>
falsa
<% } %>
```
<address class="note">**                                                                                      <%= ... %>**</address>Usato per visualizzare qualcosa, ad esempio il valore di una variabile definita nel code-behind
```
Adesso sono le <%= DateTime.Now.ToString() %>
```
&nbsp;

<address class="note">**                                                                                      <%# ... %>**</address>Usato nelle espressioni di databinding in alcuni webcontrols come ListView, DropDownList,...

&nbsp;

<address class="note">**                                                                                      <%$ ... %>**</address>Usato per leggere i valori da diverse sorgenti quali:

*   <span style="line-height: 12.15625px;">File di Risorse</span>
*   AppSettings
*   ConnectionStrings
&nbsp;

<address class="note">**                                                                                      <%@ ... %>**</address>Viene utilizzato nell'intestazione della pagina per fornire particolari direttive al compilatore; spesso viene usato per includere UserControls.

&nbsp;

<address class="note">**                                                                                      <%-- ... --%>**</address>Indica un commento lato-server e a differenza dei commenti HTML standard non viene incluso nel rendering della pagina. E' obbligatorio utilizzarlo nel caso in cui si voglia commentare un _WebControl/UserControl_ ASP.NET