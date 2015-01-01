div class: "navbar navbar-default navbar-fixed-top navbar-inverse", ->
	ul id:"color-bars", ->
		li id: "color-1"
		li id: "color-2"
		li id: "color-3"
		li id: "color-4"
		li id: "color-5"
		li id: "color-6"


	div class: "container", ->
		div class: "navbar-header", ->
			button
				type: "button"
				class: "navbar-toggle"
				data:
					toggle: "collapse"
					target: ".navbar-collapse"
				->
					span class: "icon-bar" for i in [1..3]

			a class: "navbar-brand", href: "/", "Home"
		div class: "collapse navbar-collapse", ->
			ul class: "nav navbar-nav", ->
				for document in @getCollection('pages').toJSON()
					li
						typeof: "sioc:Page"
						about: document.url
						class: ('active' if @document.url is document.url)
						->
							a
								href: document.url
								property: "dc:title"
								document.title