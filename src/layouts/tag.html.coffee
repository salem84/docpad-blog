---
layout: default
---

h1 ->
	span "Post con il tag "
	i @document.tag

ul ->
	for doc in @getCollection('posts').findAll({tags: '$in': @document.tag}).toJSON()
		li ->
			a href:doc.url, ->
				doc.title