---
title: 'Archivio'
layout: list
pageOrder: 1

---

div id: "articleSearch", class: "col-md-4 col-md-offset-8", ->
	@partial('search')

currentYear = ""

for document in @getCollection('posts').toJSON()
	year =  @date(document.date,'YYYY')
	day = @date(document.date,'MMM D')

	article class: "row articleList", ->
		div class: "row", ->
			if year != currentYear
				div class: "col-md-1", year
				currentYear = year
			else
				div class: "col-md-1", ""

			div class: "col-md-1", day
			div class: "col-md-10", ->
				a href: document.url, -> document.title

		div class: "row", ->
			p class: "col-md-10 col-md-offset-2", -> document.subTitle