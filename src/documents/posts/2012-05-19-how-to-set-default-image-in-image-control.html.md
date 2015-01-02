---
layout: post
title: How to set default image in Image Control
date: 2012-05-19
tags: ["ASP.NET","Programmazione"]
---

Leggendo su un forum ho scoperto un modo elegante per impostare un'immagine di default in un controllo _**<asp:Image>**_

Questa funzionalità è molto comoda specialmente se utilizzata in un _<asp:TemplateField>_ di un Data-Bound Control (GridView, ListView, ...)
``` javascript
<script type="text/javascript">
function ShowDefaultImage(ctrl)
{
ctrl.src = 'default.jpg';
}
</script>

<asp:Image runat="server" ID="img" ImageUrl="" onerror="ShowDefaultImage(this)"/></pre>
```