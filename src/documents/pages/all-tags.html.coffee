---
layout: 'default'
title: 'Tags'
pageOrder: 2
---

h1 ->
	span "Tutti i tag"

div id: "tags-list", ->
	ul ->
		for tag, data of @getTagCloud()
			li ->
				a href: data.url, ->
					tag
				i ->
					text 