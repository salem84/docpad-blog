---
layout: "default"
title: "500 Internal Server Error"
subTitle: "Mayday Captin! It looks like we lost an engine."
dynamic: true
---

div class: "hero-unit", ->
  h1 "500 Internal Server Error"
  p ->
    text "Ooops! Qualcosa non funziona!! "
    #code @req.url
    text "Ecco i dettagli:"
  p ->
    pre @err.message or @err.stack