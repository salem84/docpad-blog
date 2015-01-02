---
layout: post
title: Umbraco Razor Script for displaying current language
date: 2013-05-14
tags: ["Programmazione","umbraco"]
---

Ecco uno script, prelevato direttamente da [questo webcast](http://stream.umbraco.org/video/2196556/multi-language-websites-in "webcast-umbraco") per visualizzare le informazioni sulla lingua corrente.
<!-- more -->
Va inserita all'interno di un template Umbraco
```
<umbraco:Macro Language="cshtml" runat="server">
    @using System.Globalization
    <em>Current Language:</em> @CultureInfo.CurrentCulture.DisplayName<br/>
    <em>Native Name:</em> @CultureInfo.CurrentCulture.NativeName<br/>
</umbraco:Macro>
```
Nei prossimi giorni cercherò di postare un articolo in cui spiego come configurare un sito multi-language in Umbraco

&nbsp;