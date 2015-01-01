---
layout: 'default'
title: 'Lost Page'
subTitle: "Whoops we managed to lose a page."
dynamic: false
---

div clas: "hero-unit", ->
  h1 "404: Pagina non esistente"
  p ->
    text "Ooops! La pagina richiesta non è stata trovata."
    #code @req.url 