---
layout: default
---

article id: "post", class: "post", ->
	
	div class: "post-content container",
		div id: "post-head", ->
			div class: "title-container",->
				h1 @document.title

			div class: "date text-muted text-right", ->
				@date(@document.date)

		div class: "clear"
		
		div id: "tags", ->
			for tag in @document.tags
				div class: "tag_item", ->
					a href: "/tags/"+ tag.replace(" ", "-").toLowerCase(), -> tag

		div ->
			@content

	div class:"addthis_native_toolbox"

	div id: "disqus", ->
		@partial('disqus')

	if @document.relatedDocuments and @document.relatedDocuments.length
		section id: "related", ->
			h3 "Related Posts"
			nav class: "linklist", ->
				ul ->
					for document in @document.relatedDocuments
						li ->
							span @date(document.date)
							text "&raquo;"
							a href: document.url, -> document.title